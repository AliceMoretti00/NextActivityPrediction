import gc
from config import load
from config import INPUT_PATH, OUTPUT_PATH, OUTPUT_DS_PATH
from pm4py.util import xes_constants as xes
import pm4py
import shutil
from os.path import isfile, join, exists
from os import listdir
import sys
import pandas as pd
import numpy as np
from cli_functions import select_features
from sklearn.preprocessing import MinMaxScaler
import os
import copy

args = load()

"""
Ottiene tutti gli attributi degli eventi dal log.

Questa funzione prende un log di eventi e restituisce un insieme di tutti gli attributi presenti
negli eventi del log.

Args:
    log (list): Una lista di tracce di eventi. Ogni traccia è rappresentata come una lista di eventi,
                dove ogni evento è un dizionario che rappresenta gli attributi dell'evento.

Returns:
    set: Un insieme di tutti gli attributi presenti negli eventi del log.

Examples:
    >>> log = [
    ...     [{'timestamp': '2022-01-01', 'activity': 'Start'}, {'timestamp': '2022-01-02', 'activity': 'End'}],
    ...     [{'timestamp': '2022-01-03', 'activity': 'Start'}, {'timestamp': '2022-01-04', 'activity': 'End'}]
    ... ]
    >>> get_all_event_attributes_from_log(log)
    {'timestamp', 'activity'}
"""


# Ottiene tutti gli attributi degli eventi dal log
def get_all_event_attributes_from_log(log):
    all_attributes = set()
    for trace in log:
        for event in trace:
            all_attributes = all_attributes.union(set(event.keys()))
    if xes.DEFAULT_TRANSITION_KEY in all_attributes:
        all_attributes.remove(xes.DEFAULT_TRANSITION_KEY)
    return all_attributes


"""
Ottiene tutti gli attributi delle tracce dal log.

Questa funzione prende un log di eventi e restituisce un insieme di tutti gli attributi presenti
nelle tracce del log.

Args:
    log (list): Una lista di tracce di eventi. Ogni traccia è rappresentata come un oggetto Trace
                che potrebbe contenere attributi.

Returns:
    set: Un insieme di tutti gli attributi presenti nelle tracce del log.

Examples:
    >>> log = [
    ...     Trace(attributes={'caseid': '1', 'activity': 'Start'}),
    ...     Trace(attributes={'caseid': '2', 'activity': 'Start'})
    ... ]
    >>> get_all_trace_attributes_from_log(log)
    {'caseid', 'activity'}
"""


# Ottiene tutti gli attributi delle tracce dal log
def get_all_trace_attributes_from_log(log):
    all_attributes = set()
    for trace in log:
        all_attributes = all_attributes.union(set(trace.attributes.keys()))
    if xes.DEFAULT_TRACEID_KEY in all_attributes:
        all_attributes.remove(xes.DEFAULT_TRACEID_KEY)
    return all_attributes


def write_function(wfile, text):
    wfile.writelines(text)


def v_case(wfile, word, index, log, lista_param_tracce, lista_param_eventi):
    # tmp contains the value of the concept:name;
    # this is necessary to compare the "concept:name" of log file and the concept:name of .g file
    tmp = ' '.join(word[2:])  # CHANGED TO GET CONCEPT:NAME
    # note: count = event_index + 1, to avoid same information by same "concept:name" value
    count = 1
    # with this for cycle we scan each event refers to index (refered to the trace)
    for event_index, _ in enumerate(log[index]):
        # when "concept:name" == tmp && the node count is right, we write in destination file the line + additional info
        # NOTE: we add 2 space for the execution of "temporal_calculated_features.py" file
        # HARDCODED sul campo chiamato concept:name

        # print(index)

        if tmp == log[index][event_index]['concept:name'] and word[1] == str(count):
            params_tracks = ""
            for elem in lista_param_tracce:
                params_tracks += f'{log[index].attributes[elem]} '
            params_tracks = params_tracks.strip()
            # ******************************************************************************************
            #
            # # MOD MR
            # ho aggiunto il replace in quanto con il file di log PermitLog_SE il concept:name ha degli spazi e
            # crea problemi quando va a leggere il merged.g
            #
            # df = pd.read_csv(path_read, sep=" ", names=names2, dtype={'name_track':str})
            # v 2  Starttrip 2016-10-0423:59:59.999000+02:00 travel permit 76455
            # nell'esempio di sopra con read_csv divide in 3 colonne (sbagliato) travel permit 76455 #
            #
            # #
            params_tracks = params_tracks.replace(' ', '_')
            params_elems = ""
            for elem in lista_param_eventi:
                try:
                    s = str(log[index][event_index][elem])
                    s = s.replace(" ", "")  # changed this to make one word of concept:name
                    params_elems += f'{s} '
                    # se non presente viene impostato il valore -1
                except KeyError:
                    params_elems += "-1" + " "
            params_elems = params_elems.strip()
            a = f'{word[0]} {word[1]}  {params_elems} {params_tracks}\n'

            write_function(wfile, a)
        count += 1


def e_case(wfile, word):
    # changed this to make one word of concept:name
    a = f'{word[0]} {word[1]} {word[2]} {"".join(word[3:])}\n'
    write_function(wfile, a)


def add_info(path_w, path_r, log, lista_param_tracce, lista_param_eventi):
    # When we find 'XP' we increase the trace index by 1.
    # Each trace in .g start with 'XP' --> for the firs time we need to set trace_index= -1
    trace_index = -1
    try:
        os.remove(path_w)
    except:
        print(path_w + ' non rimosso')
    w = open(path_w, "a")  # file in which we append trace + additionals information
    r = open(path_r, "r")  # file .g to which informations is to be added

    # scan line by line the .g file
    for line in r:
        # split line into a list where each word is a list item
        riga = line.split()

        # control if line is empty; if it's true, the line isn't empty
        if line.strip():
            # if the list contain 'XP' we are in a new trace, --> we increase trace_index by 1
            if riga[0] == 'XP':
                write_function(w, 'XP\n')
                trace_index = trace_index + 1
            # if the first element of list is 'v' --> the line refers to a node (event) -->
            # we have to add additional informations
            if riga[0] == 'v':
                print(trace_index)
                if trace_index == 13087:
                    print('sono qui')
                v_case(w, riga, trace_index, log, lista_param_tracce, lista_param_eventi)
            elif riga[0] == 'e':
                # if the first element of list is 'e' --> the line refers to an edge --> no additional informations.
                # We only write the line in the destination file
                e_case(w, riga)
        else:
            # empty line case
            write_function(w, ' \n')
    r.close()
    w.close()


# This function convert the .xes file to .csv file
def convert_xes_to_csv(log_file, csv_path):
    df_xes = pm4py.convert_to_dataframe(log_file)  # convert il file .xes in un dataframe
    df_xes = df_xes.rename(columns={'case:concept:name': 'Case ID', 'time:timestamp': 'Timestamp'})
    df_xes.drop(['Activity'], errors='ignore', axis=1, inplace=True)
    df_xes = df_xes.rename(columns={'concept:name': 'Activity'})
    # df_xes = df_xes.rename(columns=lambda x: x.replace('case:', ''))
    column_sort = ['Case ID', 'Activity', 'Timestamp'] + [col for col in df_xes.columns if
                                                          col not in ['Case ID', 'Activity', 'Timestamp']]
    df_xes = df_xes[column_sort]
    df_xes.to_csv(csv_path, index=False)
    return df_xes


def get_g_dataframe(filename=None):
    lista_param_tracce = ['concept:name']
    lista_param_eventi = ['concept:name', 'time:timestamp']

    path_xes_dir = join(INPUT_PATH, 'xes')

    # Path della cartella che contiene i file .g
    path_r_dir = join(INPUT_PATH, 'g')

    # output path
    path_w = join(OUTPUT_PATH, 'Pre-cage')

    # dataset path
    dataset_dir = args.data_dir

    xes_list = []

    try:
        xes_list = [join(path_xes_dir, f) for f in listdir(path_xes_dir) if isfile(join(path_xes_dir, f))]
    except:
        sys.exit("  Error - " + path_xes_dir + " not exist!")

    # need to have this gfile as input, together with the xes file. is gfile result from prom?
    # it results from a petri net?
    g_list = []

    try:
        g_list = [join(path_r_dir, f) for f in listdir(path_r_dir) if isfile(join(path_r_dir, f))]
    except:
        sys.exit("  Error - " + path_r_dir + " not exist!")

    '''
    .g file structure:
        XP
        v 1  ASUBMITTED
        v 2  APARTLYSUBMITTED
        ....
        e 1 2 ASUBMITTED__APARTLYSUBMITTED
    '''

    if filename is None:  # filename is the parameter of the function
        name_xes = args.xes_name_se
        print(f'Filename xes di default: {"name_xes"}')
    else:
        name_xes = join(INPUT_PATH, 'xes', filename)
    # check if exists
    if not exists(name_xes):
        raise FileNotFoundError(f'Filename: {"name_xes"} not found')

    log_file = name_xes
    # need to have the petri net
    net_file = args.net_name
    # path for .csv file
    csv_path = args.csv_name
    # Import .xes file
    log_total = pm4py.read_xes(log_file)
    logs = [log_total]

    # dynamic call of add_info function based on previous logs list

    for i in range(len(logs)):
        add_info(join(path_w, f'{i}.g'), g_list[i], logs[i], lista_param_tracce, lista_param_eventi)

    original = join(path_w, '0.g')
    target = join(dataset_dir, '0.g')

    shutil.copyfile(original, target)

    # append the 4 file.g in only one file "merged.g"
    filenames = []
    for i in range(len(logs)):
        filenames.append(join(path_w, f'{i}.g'))

    # Open merged.g in write mode
    with open(join(path_w, 'merged.g'), 'w') as outfile:
        # Iterate through list
        for names in filenames:
            # Open each file in read mode
            with open(names) as infile:
                outfile.write(infile.read())
            outfile.write('')
            # outfile.close()

    #     ************************************************************************
    #
    #                 END CREATE .G FILE
    #
    #                 START temporal_and_ohe**.py
    #
    #                 ADD A TEMPORAL FEATURES:
    #
    #                 #start time,
    #                 #norm time,
    #                 #prev event time,
    #                 #trace time
    #
    #
    #     ************************************************************************

    path_read = join(path_w, 'merged.g')  # all the 4 .g partition merged

    path_write = join(dataset_dir, 'complete.g')

    # NOTE: you have to check if the .g file has the correct fields before the execution; see the .g example!!
    # NOTE: each 'v' row must have 2 space before concept:name to make 'node2' = NaN
    '''
    .g file structure:
        XP
        v 1  ASUBMITTED 2011-09-30 22:38:44.546000+00:00 20000
        v 2  APARTLYSUBMITTED 2011-09-30 22:38:44.880000+00:00 20000
        ....
        e 1 2 ASUBMITTED__APARTLYSUBMITTED
        ...

    '''

    """
    Rinomina e unisce gli attributi relativi agli eventi e alle tracce per evitare ambiguità.

    Questo frammento di codice confronta gli elementi nelle liste `lista_param_eventi` e
    `lista_param_tracce`. Se trova elementi con lo stesso nome in entrambe le liste,
    aggiunge il suffisso "_event" agli elementi di `lista_param_eventi` e "_track" agli
    elementi di `lista_param_tracce`. Dopodiché, unisce queste liste in una singola lista
    `names2`, che include anche i nomi base ["e_v", "node1", "node2"]. Infine, pulisce i
    nomi degli attributi in `names2` rimuovendo eventuali prefissi identificati dal carattere ":".

    Parameters
    ----------
    lista_param_eventi : list of str
        La lista degli attributi relativi agli eventi.
    lista_param_tracce : list of str
        La lista degli attributi relativi alle tracce.
    e_v_column : int, optional
        Un valore iniziale per la colonna `e_v`, predefinito a 0.

    Returns
    -------
    names2 : list of str
        Una lista unificata che include i nomi degli attributi per eventi e tracce, con
        i necessari suffissi aggiunti per evitare ambiguità, e i nomi base ["e_v", "node1", "node2"].

    """
    e_v_column = 0

    # Aggiunge _event agli attributi relativi agli attributi e track agli attributi relativi alle tracce

    for i in range(len(lista_param_eventi)):
        for j in range(len(lista_param_tracce)):
            if lista_param_eventi[i] == lista_param_tracce[j]:
                lista_param_eventi[i] = lista_param_eventi[i] + "_event"
                lista_param_tracce[j] = lista_param_tracce[j] + "_track"

    # e li unisce in una riga unica
    names2 = ["e_v", "node1", "node2"] + lista_param_eventi + lista_param_tracce

    for i in range(len(names2)):
        names2[i] = names2[i].split(':')[-1]

    """
    Legge e prepara un DataFrame da un file .g, effettuando la conversione e manipolazione dei timestamp.

    Questo frammento di codice esegue la lettura di un file .g specificato dal percorso `path_read`, selezionando
    solo le colonne definite in `names2`. Successivamente, modifica il formato dei timestamp, li sposta in una nuova
    colonna 'finish' e prepara un DataFrame aggiuntivo per le operazioni di feature engineering. Infine, gestisce i
    valori mancanti e prepara il DataFrame per l'analisi.

    Parameters
    ----------
    path_read : str
        Il percorso del file da leggere.
    names2 : list of str
        Nomi delle colonne da selezionare durante la lettura del file.

    Steps
    -----
    1. Lettura del file: Utilizza `pd.read_csv` per leggere il file, specificando separatori, nomi delle colonne
       e tipi di dati.
    2. Manipolazione dei timestamp: Converte i timestamp in formato datetime con fuso orario UTC e sposta i valori
       in una nuova colonna 'finish'. Rimuove la colonna 'timestamp' originale.
    3. Preparazione del DataFrame `g_dataframe`: Inizializza `g_dataframe` con le stesse colonne di `df` e riempie
       con i dati di `df`, gestendo i valori NaN.
    4. Gestione della colonna 'start': Crea e manipola una colonna 'start' basata sui valori di 'finish' e condizioni
       specifiche.
    5. Pulizia e finalizzazione: Rimuove i DataFrame temporanei e gestisce i valori mancanti e non validi nelle colonne
       'start' e 'finish'.
    6. Logging: Scrive i log delle operazioni svolte in un file di testo per monitorare l'avanzamento del processo.

    """
    df = pd.read_csv(path_read, sep=" ", names=names2, dtype={
        'name_track': str})
    # accede alle variabili lista_param_eventi e lista_param_tracce dello script
    # add_info_g_file.py
    # legge il .g file prendendo solo le colonne presenti nella variabile names2
    df.timestamp = df.timestamp.apply(lambda x: str(x)[:18])

    df['timestamp'] = pd.to_datetime(df['timestamp'], format='%Y-%m-%d%H:%M:%S',
                                     utc=True)  # add utc to be sure (,utc=True)

    tmp = df.timestamp
    # Salvo in una variabile di appoggio tutti i timestamp per inserirli
    # in una nuova colonna 'finish'
    df['finish'] = tmp
    df.drop(['timestamp'], axis=1, inplace=True)

    register = join(OUTPUT_PATH, 'register')
    print_file = open(join(register, 'log.txt'), 'w')
    print_file.write('Start with g_dataframe...\n')
    print_file.flush()

    g_dataframe = pd.DataFrame(
        columns=list(df.columns))  # viene creato il g_dataframe con stesso numero/nome delle colonne df
    g_dataframe.loc[0] = np.array(np.nan * len(g_dataframe.columns))
    g_dataframe = pd.concat((g_dataframe, df), ignore_index=True)
    g_dataframe['e_v'] = g_dataframe['e_v'].fillna(
        '')  # come g_dataframe è uguale a df ma ha una riga nan all'inizio e uno spazio che separa ogni traccia

    g_dataframe = g_dataframe[:-1]
    df_shift = pd.DataFrame(columns=list(df.columns))
    df_shift.loc[0] = np.array(np.nan * len(df_shift.columns))
    df_shift.loc[1] = np.array(np.nan * len(df_shift.columns))  # riempe le prime due righe del df con tutti nan
    df_shift = pd.concat((df_shift, df), ignore_index=True)
    df_shift['e_v'] = df_shift['e_v'].fillna('')
    df_shift = df_shift[:-1]
    # non è chiaro, presumo che viene fatto per traslare verso il basso la colonna timestamp originale e successivamente
    # per valutare se prendere il valore della stessa riga del timestamp o eventualmente quella precedente
    g_dataframe['start'] = df_shift['finish'].copy()
    g_dataframe['start'] = g_dataframe.apply(lambda x: x['finish'] if x['node1'] == 1 else x['start'], axis=1)

    del [[df, df_shift]]
    gc.collect()
    df, df_shift = pd.DataFrame(), pd.DataFrame()

    g_dataframe['finish'].fillna(pd.NaT, inplace=True)
    # try this as well
    g_dataframe['start'].fillna(pd.NaT, inplace=True)
    g_dataframe['start'].replace(0, pd.NaT, inplace=True)

    # maybe not necessary...
    g_dataframe['finish'] = pd.to_datetime(g_dataframe['finish'], format='%Y-%m-%d %H:%M:%S', errors='coerce')
    g_dataframe['start'] = pd.to_datetime(g_dataframe['start'], format='%Y-%m-%d %H:%M:%S', errors='coerce')

    print_file.write('Start with feature engineering...\n')
    print_file.write('norm_time...\n')
    print_file.flush()

    '''
    Calcola la colonna 'norm_time' in base al giorno della settimana e all'ora
    Infine, dividiamo il tempo totale in minuti per 10080,
    che è il numero totale di minuti in una settimana (7 giorni * 24 ore * 60 minuti).
    Questa divisione normalizza il tempo in modo che il risultato sia compreso tra
    0 (inizio della settimana) e 1 (fine della settimana)
    '''
    g_dataframe['norm_time'] = ((g_dataframe['finish'].dt.dayofweek * 24 * 60) + (
            (g_dataframe['finish'].dt.hour * 60) + g_dataframe['finish'].dt.minute)) / 10080

    print_file.write('trace_time...\n')
    print_file.flush()

    g_dataframe['trace_time'] = g_dataframe.groupby('name_track', sort=False)['finish'].transform('min')
    g_dataframe['trace_time'] = g_dataframe['finish'] - g_dataframe['trace_time']
    g_dataframe['trace_time'] = (g_dataframe['trace_time'].dt.days * 24 * 60) + (
            g_dataframe['trace_time'].dt.seconds // 60)
    # changed!!
    # g_dataframe['prev_event_time']=g_dataframe.apply(lambda x: eventtime(x['finish'],x['start']), axis=1)
    print_file.write('prev_event_time...\n')
    print_file.flush()
    g_dataframe['prev_event_time'] = g_dataframe['finish'] - g_dataframe['start']
    g_dataframe['prev_event_time'] = (g_dataframe['prev_event_time'].dt.days * 24 * 60) + (
            g_dataframe['prev_event_time'].dt.seconds // 60)

    # add target to nodes in the graph!!
    print_file.write('Start with extra own features...\n')
    print_file.flush()
    print_file.write('read data frame...\n')
    print_file.flush()

    # ***********************************************************************************************
    #
    #
    #
    #
    #
    #
    #
    #     # Parametrizzo le colonne del file di log,
    #     # faccio scegliere all'utente quali colonne selezionare e quale operazione fare
    #
    #
    #
    #
    #
    # # *********************************************************************************************
    # QUESTO TARGETFRAME NON LO UTILIZZO IN QUANTO NON FACCIO REGRESSIONE E NON HO BISOGNO DI CALCOLARMI IL TARGET
    # CON IL DAYS TO LATE.

    targetframe = convert_xes_to_csv(log_total, csv_path)
    col_name = 'Case ID'
    if col_name in targetframe.columns:
        targetframe[col_name] = targetframe[col_name].astype(str)
    else:
        print(f"La colonna {col_name} non esiste.")

    # pulizia di tutte le colonne con il numero di 0 > 60/70% or Nan > 5% eliminare
    col_eliminate = []
    del_col_file = open(join(register, 'deleted_columns.txt'), 'w')

    del_col_file.write("Colonne eliminate per numero di NaN > 5%:\n")
    # Calcola la soglia per il numero massimo di NaN consentiti
    soglia_nan = int(len(targetframe) * 0.05)
    # Identifica le colonne con più del 5% di NaN
    colonne_da_eliminare_nan = targetframe.columns[targetframe.isna().sum() > soglia_nan]
    # Modifica i nomi delle colonne aggiungendo '(NaN)' e registra i nomi modificati
    colonne_modificate = [f"{col}(NaN)" for col in colonne_da_eliminare_nan]
    # Aggiorna la lista delle colonne eliminate con i nomi modificati
    col_eliminate += colonne_modificate
    # Rinomina le colonne nel dataframe
    targetframe.rename(columns=dict(zip(colonne_da_eliminare_nan, colonne_modificate)), inplace=True)
    # Aggiorna il file e la lista delle colonne eliminate con i nomi modificati
    del_col_file.write("\n".join(colonne_da_eliminare_nan.to_list()) + "\n\n")
    del_col_file.flush()

    del_col_file.write("Colonne eliminate con stesso valore per ogni riga:\n")
    # Identifica le colonne con lo stesso valore
    col_unique_val = [col for col in targetframe.columns if
                      targetframe[col].nunique() == 1]  # Elimina le colonne con lo stesso elem per ogni riga
    # Modifica i nomi delle colonne aggiungendo '(all same)' e registra i nomi modificati
    colonne_modificate = [f"{col}(all same)" for col in col_unique_val]
    # Aggiorna la lista delle colonne eliminate con i nomi modificati
    col_eliminate += colonne_modificate
    # Aggiorno i nomi delle colonne
    targetframe.rename(columns=dict(zip(col_unique_val, colonne_modificate)), inplace=True)
    del_col_file.write("\n".join(col_unique_val) + "\n\n")
    del_col_file.flush()

    #  If you want to choose custom features decomment this block
    # ************************************************************************************
    #
    #
    #
    #                 # GUI
    #
    #
    # #
    """
    clm = targetframe.columns.values

    # 'Case ID' - Activity - Complete Timestamp
    # Attributi obbligatori da usare
    attribute = ['Case ID', 'Activity', 'Timestamp', 'Variant', 'Variant Index']

    tmp_ = attribute + col_eliminate
    # Calcola la differenza tra le colonne originali e quelle da rimuovere
    selected_columns = [col for col in targetframe.columns if col not in tmp_]

    del [tmp_]

    clm = targetframe.columns.values
    clm = np.sort(clm)

    selected_columns = sorted(selected_columns)
    del_col_file.write("Colonne che non sono state selezionate:\n")

    opzione_scelta = None
    train_rete = None

    if 'Days too late' in selected_columns:
        selected_columns.remove('Days too late')
        regression = True
        selected_columns, not_selected_columns, opzione_scelta, train_rete = select_features(selected_columns,
                                                                                             col_eliminate, regression)

    else:
        regression = False
        # selected_columns, not_selected_columns, opzione_scelta, train_rete = select_features(selected_columns,
        #                                                                                     col_eliminate, regression)

    if regression:
        dtl = targetframe['Days too late']
        targetframe.drop('Days too late', axis=1, inplace=True)
        targetframe['Days too late'] = dtl

        print_file.write('Prepare days too late...\n')
        print_file.flush()
        targetframe = targetframe.groupby('Case ID', sort=False, as_index=False).agg(
            'max')  # ['Days too late'] #.agg('max')
        idx = list(range(3, 7)) + list(range(10, len(targetframe.columns)))
        columns = list(np.array(targetframe.columns)[idx])

        print_file.write('Set values, sizes and array for all features + target and add to g_dataframe...\n')
        print_file.flush()

        sizes = np.array(g_dataframe.groupby('name_track', sort=False, as_index=False).size()['size'])
        idxss = list(np.where(~g_dataframe['name_track'].isnull()))[0]

        print_file.write('add {} to g_dataframe...\n'.format(i))
        print_file.flush()
        arr = sum([[s] * n for s, n in zip(targetframe['Days too late'], sizes)], [])

        g_dataframe['target'] = [np.nan] * len(g_dataframe)
        arr = pd.Series(arr)
        arr.index = idxss
        g_dataframe['target'] = arr

    print_file.write('Set values, sizes and array for all features + target and add to g_dataframe...\n')
    print_file.flush()
    
    # crea una lista di conteggi di nodi per ogni grafo

    sizes = np.array(g_dataframe.groupby('name_track', sort=False, as_index=False).size()['size'])
    """

    idxss = list(np.where(~g_dataframe['name_track'].isnull()))[
        0]  # Trova gli indici delle righe in cui la colonna 'name_track' di g_dataframe non è nulla.

    """
    Processa e aggiunge colonne selezionate da un dataframe di origine a un dataframe di destinazione,
    distinguendo tra attributi categorici e numerici. Gli attributi numerici vengono normalizzati prima
    dell'aggiunta. 

    Parameters
    ----------
    selected_columns : list of str
        Lista dei nomi delle colonne selezionate da processare e aggiungere al dataframe di destinazione.
    targetframe : pandas.DataFrame
        Il dataframe di origine da cui vengono prelevati i valori delle colonne selezionate.
    g_dataframe : pandas.DataFrame
        Il dataframe di destinazione a cui vengono aggiunti i valori delle colonne selezionate.
    sizes : list of int
        Lista che definisce il numero di volte per cui ciascun valore nella colonna selezionata deve essere ripetuto.
    print_file : _io.TextIOWrapper
        File aperto in modalità di scrittura su cui vengono scritti i log delle operazioni eseguite.
    idxss : pandas.Index
        L'indice che definisce l'ordine e la posizione dei valori da inserire nel dataframe di destinazione.

    Notes
    -----
    Gli attributi categorici e numerici vengono identificati tramite tentativo di conversione in float.
    Gli attributi che non possono essere convertiti vengono considerati categorici e aggiunti alla lista
    `attCategorici`, mentre quelli convertibili sono considerati numerici e aggiunti alla lista `attNumerici`.

    """

    selected_columns = ['org:resource(NaN)']
    g_dataframe['org:resource(NaN)'] = 'No_resource'

    att_categorici = []
    att_numerici = []
    encoding_dict = {}

    # Set values, sizes, and array per tutte le colonne selezionate
    for i in list(selected_columns):
        print_file.write(f'Aggiungi {i} a g_dataframe...\n')
        print_file.flush()

        for idx, element in zip(idxss, targetframe[i]):
            if str(element) == 'nan':
                element = 'No_resource'
            g_dataframe.loc[idx, str(i)] = element

        # If you want to fill the rest of the DataFrame with NaNs in the 'ciao' column

        # arr = sum([[s] * n for s, n in zip(targetframe[i], idxss)], [])
        # g_dataframe[i] = [np.nan] * len(g_dataframe)
        # arr = pd.Series(arr)

        unique = g_dataframe[i].unique()
        flag_string = False

        for elem in unique:
            try:
                elem.astype(float)
            except:
                flag_string = True

        if flag_string:
            att_categorici.append(i)
            encoding_dict.update({i: {unique[j]: j + 1 for j in range(len(unique))}})
        else:
            att_numerici.append(i)

            # Applico la normalizzazione sugli attributi categorici

            # Inizializza lo scaler
            scaler = MinMaxScaler()
            # Trasforma i dati
            arr_normalized = scaler.fit_transform(arr.values.reshape(-1, 1))
            # Crea una Pandas Series dai dati normalizzati
            arr = pd.Series(arr_normalized.flatten())

    gc.collect()

    print_file.write('Start with normalizing andreas features...\n')
    print_file.flush()

    for i in ['norm_time', 'trace_time', 'prev_event_time']:
        # Normalizzazione delle feature norm_time - trace_time - prev_event_time
        g_dataframe[i] = g_dataframe[i].div(g_dataframe[i].max()).round(15)

    resources = [x for x in unique if str(x) != 'nan']
    resources_dict = dict.fromkeys(resources, 0)
    start_dates = sorted(list(set(list(g_dataframe['start'].dropna()))))

    g_dataframe['resources'] = [[0] * len(unique)] * len(g_dataframe)
    g_dataframe['resources'] = g_dataframe['resources'].astype(object)

    log_prefix = open(join(OUTPUT_DS_PATH, 'prefix_log.txt'), "w")

    # For every time, takes current activities to get the busy resources
    for i in start_dates:
        # current activity
        j = g_dataframe[g_dataframe['start'] <= i]
        finish_time = j[j['finish'] >= i]
        res = list(finish_time['org:resource(NaN)'])

        current_dict = copy.deepcopy(resources_dict)

        # create a log file in the format
        # timestamp name_track name_event
        for active_case in range(0, len(finish_time)):
            log_prefix.write(str(i) + " " + finish_time.iloc[active_case]['name_track'] + " " +
                             finish_time.iloc[active_case]['name_event'] + "\n")

        for r in res:
            if r in current_dict:
                current_dict[r] += 1

        features = [x for x in current_dict.values()]

        for index in list(finish_time.index):
            g_dataframe.at[index, 'resources'] = [a + b for a, b in zip(g_dataframe.iloc[index]['resources'], features)]

    log_prefix.close()

    for i in range(0, len(g_dataframe['resources'])):
        if sum(g_dataframe.iloc[i]['resources']) != 0:
            g_dataframe.at[i, 'resources'] = [x / sum(g_dataframe.iloc[i]['resources']) for x in
                                              g_dataframe.iloc[i]['resources']]

    # casting time column as string
    g_dataframe[['finish', 'start']] = g_dataframe[['finish', 'start']].astype(str)
    # add blank row before XPs
    g_dataframe['e_v'].replace('XP', '\nXP', inplace=True)

    # remove nan and null values
    remove_nans_columns = [col for col in g_dataframe.columns if col != 'org:resource(NaN)']
    g_dataframe[remove_nans_columns] = g_dataframe[remove_nans_columns].fillna('')
    g_dataframe[remove_nans_columns] = g_dataframe[remove_nans_columns].replace({'NaT': ''})
    for i in range(0, len(g_dataframe)):
        if g_dataframe.iloc[i]['e_v'] != 'v':
            g_dataframe.at[i, 'resources'] = ''
            g_dataframe.at[i, 'org:resource(NaN)'] = ''

    # recompose the string for the final .g file

    blacklist = ['finish', 'start', 'name_track']
    # blacklist.append('org:resource(NaN)')  # to delete one hot encoding for resources

    g_dataframe.drop(columns=blacklist, axis=1, inplace=True)

    print('start writing the complete.g file ...')

    print_file.write('Start writing the complete.g file...\n')
    print_file.flush()

    save_df = g_dataframe.copy()
    save_df[list(save_df.columns)] = save_df[list(save_df.columns)].astype(str)
    save_df['tmp'] = save_df[list(save_df.columns)].T.agg(' '.join)
    save_df['tmp'] = save_df['tmp'].str.strip()
    tmp = save_df['tmp'][1:].str.cat(sep='\n')
    tmp += '\n'
    tmp = tmp.replace("nan", "")

    # OUTPUT
    print_file.write('Actual writing the complete.g file...\n')

    print_file.close()
    w = open(path_write, "w")
    w.writelines(tmp)
    w.close()

    g_dataframe['e_v'] = g_dataframe['e_v'].replace('\nXP', 'XP')
    return g_dataframe, att_numerici, att_categorici, encoding_dict
