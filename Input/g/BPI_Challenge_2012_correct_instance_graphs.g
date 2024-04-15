XP
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 A_CANCELLED
v 10 W_Completeren aanvraag
v 11 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__A_CANCELLED
e 9 10 A_CANCELLED__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_PREACCEPTED
v 7 W_Completeren aanvraag
v 8 W_Afhandelen leads
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 A_DECLINED
v 15 W_Completeren aanvraag
v 16 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_PREACCEPTED
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Afhandelen leads
e 8 9 W_Afhandelen leads__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__A_DECLINED
e 14 15 A_DECLINED__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 A_CANCELLED
v 14 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__A_CANCELLED
e 13 14 A_CANCELLED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_PREACCEPTED
v 7 W_Completeren aanvraag
v 8 W_Afhandelen leads
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 A_CANCELLED
v 15 W_Completeren aanvraag
v 16 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_PREACCEPTED
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Afhandelen leads
e 8 9 W_Afhandelen leads__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__A_CANCELLED
e 14 15 A_CANCELLED__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 A_ACCEPTED
v 10 O_SELECTED
v 11 A_FINALIZED
v 12 O_CREATED
v 13 O_SENT
v 14 W_Nabellen offertes
v 15 W_Completeren aanvraag
v 16 W_Nabellen offertes
v 17 W_Nabellen offertes
v 18 W_Nabellen offertes
v 19 O_SENT_BACK
v 20 W_Valideren aanvraag
v 21 W_Nabellen offertes
v 22 W_Valideren aanvraag
v 23 A_DECLINED
v 24 O_DECLINED
v 25 W_Valideren aanvraag
v 26 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__A_ACCEPTED
e 9 10 A_ACCEPTED__O_SELECTED
e 9 11 A_ACCEPTED__A_FINALIZED
e 10 12 O_SELECTED__O_CREATED
e 11 12 A_FINALIZED__O_CREATED
e 12 13 O_CREATED__O_SENT
e 13 14 O_SENT__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Nabellen offertes
e 17 18 W_Nabellen offertes__W_Nabellen offertes
e 18 19 W_Nabellen offertes__O_SENT_BACK
e 19 20 O_SENT_BACK__W_Valideren aanvraag
e 20 21 W_Valideren aanvraag__W_Nabellen offertes
e 21 22 W_Nabellen offertes__W_Valideren aanvraag
e 22 23 W_Valideren aanvraag__A_DECLINED
e 23 24 A_DECLINED__O_DECLINED
e 24 25 O_DECLINED__W_Valideren aanvraag
e 25 26 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 A_ACCEPTED
v 8 A_FINALIZED
v 9 O_SELECTED
v 10 O_CREATED
v 11 O_SENT
v 12 W_Nabellen offertes
v 13 W_Completeren aanvraag
v 14 W_Nabellen offertes
v 15 W_Nabellen offertes
v 16 W_Nabellen offertes
v 17 O_SELECTED
v 18 O_CANCELLED
v 19 O_CREATED
v 20 O_SENT
v 21 W_Nabellen offertes
v 22 W_Nabellen offertes
v 23 W_Nabellen offertes
v 24 W_Nabellen offertes
v 25 W_Nabellen offertes
v 26 W_Nabellen offertes
v 27 W_Nabellen offertes
v 28 W_Nabellen offertes
v 29 W_Nabellen offertes
v 30 O_SENT_BACK
v 31 W_Valideren aanvraag
v 32 W_Nabellen offertes
v 33 W_Valideren aanvraag
v 34 W_Nabellen incomplete dossiers
v 35 W_Valideren aanvraag
v 36 W_Nabellen incomplete dossiers
v 37 W_Nabellen incomplete dossiers
v 38 W_Nabellen incomplete dossiers
v 39 W_Nabellen incomplete dossiers
v 40 W_Nabellen incomplete dossiers
v 41 W_Nabellen incomplete dossiers
v 42 W_Nabellen incomplete dossiers
v 43 W_Nabellen incomplete dossiers
v 44 W_Nabellen incomplete dossiers
v 45 W_Nabellen incomplete dossiers
v 46 W_Nabellen incomplete dossiers
v 47 W_Nabellen incomplete dossiers
v 48 W_Nabellen incomplete dossiers
v 49 W_Nabellen incomplete dossiers
v 50 W_Nabellen incomplete dossiers
v 51 W_Nabellen incomplete dossiers
v 52 W_Nabellen incomplete dossiers
v 53 W_Nabellen incomplete dossiers
v 54 W_Nabellen incomplete dossiers
v 55 W_Nabellen incomplete dossiers
v 56 W_Nabellen incomplete dossiers
v 57 W_Valideren aanvraag
v 58 W_Nabellen incomplete dossiers
v 59 W_Valideren aanvraag
v 60 W_Nabellen incomplete dossiers
v 61 W_Valideren aanvraag
v 62 W_Nabellen incomplete dossiers
v 63 W_Nabellen incomplete dossiers
v 64 W_Nabellen incomplete dossiers
v 65 W_Nabellen incomplete dossiers
v 66 W_Nabellen incomplete dossiers
v 67 W_Nabellen incomplete dossiers
v 68 W_Nabellen incomplete dossiers
v 69 W_Nabellen incomplete dossiers
v 70 W_Nabellen incomplete dossiers
v 71 W_Valideren aanvraag
v 72 W_Nabellen incomplete dossiers
v 73 W_Valideren aanvraag
v 74 O_ACCEPTED
v 75 A_APPROVED
v 76 A_REGISTERED
v 77 A_ACTIVATED
v 78 W_Valideren aanvraag
v 79 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__A_ACCEPTED
e 7 8 A_ACCEPTED__A_FINALIZED
e 7 9 A_ACCEPTED__O_SELECTED
e 8 18 A_FINALIZED__O_CANCELLED
e 9 10 O_SELECTED__O_CREATED
e 10 11 O_CREATED__O_SENT
e 11 12 O_SENT__W_Nabellen offertes
e 12 13 W_Nabellen offertes__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Nabellen offertes
e 15 16 W_Nabellen offertes__W_Nabellen offertes
e 16 17 W_Nabellen offertes__O_SELECTED
e 17 18 O_SELECTED__O_CANCELLED
e 18 19 O_CANCELLED__O_CREATED
e 19 20 O_CREATED__O_SENT
e 20 21 O_SENT__W_Nabellen offertes
e 21 22 W_Nabellen offertes__W_Nabellen offertes
e 22 23 W_Nabellen offertes__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Nabellen offertes
e 24 25 W_Nabellen offertes__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Nabellen offertes
e 26 27 W_Nabellen offertes__W_Nabellen offertes
e 27 28 W_Nabellen offertes__W_Nabellen offertes
e 28 29 W_Nabellen offertes__W_Nabellen offertes
e 29 30 W_Nabellen offertes__O_SENT_BACK
e 30 31 O_SENT_BACK__W_Valideren aanvraag
e 31 32 W_Valideren aanvraag__W_Nabellen offertes
e 32 33 W_Nabellen offertes__W_Valideren aanvraag
e 33 34 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 34 35 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 35 36 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 36 37 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 37 38 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 38 39 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 39 40 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 40 41 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 41 42 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 42 43 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 43 44 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 44 45 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 45 46 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 46 47 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 47 48 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 48 49 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 49 50 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 50 51 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 51 52 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 52 53 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 53 54 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 54 55 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 55 56 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 56 57 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 57 58 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 58 59 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 59 60 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 60 61 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 61 62 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 62 63 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 63 64 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 64 65 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 65 66 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 66 67 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 67 68 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 68 69 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 69 70 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 70 71 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 71 72 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 72 73 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 73 74 W_Valideren aanvraag__O_ACCEPTED
e 74 75 O_ACCEPTED__A_APPROVED
e 75 76 A_APPROVED__A_REGISTERED
e 76 77 A_REGISTERED__A_ACTIVATED
e 77 78 A_ACTIVATED__W_Valideren aanvraag
e 78 79 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 A_ACCEPTED
v 8 O_SELECTED
v 9 A_FINALIZED
v 10 O_CREATED
v 11 O_SENT
v 12 W_Nabellen offertes
v 13 W_Completeren aanvraag
v 14 W_Nabellen offertes
v 15 W_Nabellen offertes
v 16 W_Nabellen offertes
v 17 W_Nabellen offertes
v 18 W_Nabellen offertes
v 19 W_Nabellen offertes
v 20 W_Nabellen offertes
v 21 O_SENT_BACK
v 22 W_Valideren aanvraag
v 23 W_Nabellen offertes
v 24 W_Valideren aanvraag
v 25 W_Nabellen incomplete dossiers
v 26 W_Valideren aanvraag
v 27 W_Nabellen incomplete dossiers
v 28 W_Nabellen incomplete dossiers
v 29 W_Nabellen incomplete dossiers
v 30 W_Nabellen incomplete dossiers
v 31 W_Nabellen incomplete dossiers
v 32 W_Nabellen incomplete dossiers
v 33 W_Nabellen incomplete dossiers
v 34 O_DECLINED
v 35 A_DECLINED
v 36 W_Nabellen incomplete dossiers
v 37 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__A_ACCEPTED
e 7 8 A_ACCEPTED__O_SELECTED
e 7 9 A_ACCEPTED__A_FINALIZED
e 8 10 O_SELECTED__O_CREATED
e 9 10 A_FINALIZED__O_CREATED
e 10 11 O_CREATED__O_SENT
e 11 12 O_SENT__W_Nabellen offertes
e 12 13 W_Nabellen offertes__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Nabellen offertes
e 15 16 W_Nabellen offertes__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Nabellen offertes
e 17 18 W_Nabellen offertes__W_Nabellen offertes
e 18 19 W_Nabellen offertes__W_Nabellen offertes
e 19 20 W_Nabellen offertes__W_Nabellen offertes
e 20 21 W_Nabellen offertes__O_SENT_BACK
e 21 22 O_SENT_BACK__W_Valideren aanvraag
e 22 23 W_Valideren aanvraag__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Valideren aanvraag
e 24 25 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 25 26 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 26 27 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 27 28 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 28 29 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 29 30 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 30 31 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 31 32 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 32 33 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 33 34 W_Nabellen incomplete dossiers__O_DECLINED
e 34 35 O_DECLINED__A_DECLINED
e 35 36 A_DECLINED__W_Nabellen incomplete dossiers
e 36 37 W_Nabellen incomplete dossiers__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 W_Afhandelen leads
v 7 W_Afhandelen leads
v 8 A_PREACCEPTED
v 9 W_Completeren aanvraag
v 10 W_Afhandelen leads
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 W_Completeren aanvraag
v 15 W_Completeren aanvraag
v 16 W_Completeren aanvraag
v 17 W_Completeren aanvraag
v 18 W_Completeren aanvraag
v 19 W_Completeren aanvraag
v 20 A_DECLINED
v 21 W_Completeren aanvraag
v 22 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__W_Afhandelen leads
e 6 7 W_Afhandelen leads__W_Afhandelen leads
e 7 8 W_Afhandelen leads__A_PREACCEPTED
e 8 9 A_PREACCEPTED__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Afhandelen leads
e 10 11 W_Afhandelen leads__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Completeren aanvraag
e 14 15 W_Completeren aanvraag__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Completeren aanvraag
e 18 19 W_Completeren aanvraag__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__A_DECLINED
e 20 21 A_DECLINED__W_Completeren aanvraag
e 21 22 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 A_ACCEPTED
v 14 O_SELECTED
v 15 A_FINALIZED
v 16 O_CREATED
v 17 O_SENT
v 18 W_Nabellen offertes
v 19 W_Completeren aanvraag
v 20 W_Nabellen offertes
v 21 W_Nabellen offertes
v 22 W_Nabellen offertes
v 23 W_Nabellen offertes
v 24 W_Nabellen offertes
v 25 W_Nabellen offertes
v 26 W_Nabellen offertes
v 27 W_Nabellen offertes
v 28 W_Nabellen offertes
v 29 W_Nabellen offertes
v 30 W_Nabellen offertes
v 31 W_Nabellen offertes
v 32 W_Nabellen offertes
v 33 W_Nabellen offertes
v 34 W_Nabellen offertes
v 35 O_SENT_BACK
v 36 W_Valideren aanvraag
v 37 W_Nabellen offertes
v 38 W_Valideren aanvraag
v 39 W_Nabellen incomplete dossiers
v 40 W_Valideren aanvraag
v 41 W_Nabellen incomplete dossiers
v 42 W_Nabellen incomplete dossiers
v 43 W_Nabellen incomplete dossiers
v 44 W_Nabellen incomplete dossiers
v 45 W_Nabellen incomplete dossiers
v 46 W_Nabellen incomplete dossiers
v 47 W_Nabellen incomplete dossiers
v 48 W_Valideren aanvraag
v 49 W_Nabellen incomplete dossiers
v 50 W_Valideren aanvraag
v 51 W_Nabellen incomplete dossiers
v 52 W_Valideren aanvraag
v 53 W_Nabellen incomplete dossiers
v 54 W_Nabellen incomplete dossiers
v 55 W_Nabellen incomplete dossiers
v 56 W_Valideren aanvraag
v 57 W_Nabellen incomplete dossiers
v 58 W_Valideren aanvraag
v 59 W_Nabellen incomplete dossiers
v 60 W_Valideren aanvraag
v 61 W_Nabellen incomplete dossiers
v 62 W_Nabellen incomplete dossiers
v 63 W_Nabellen incomplete dossiers
v 64 W_Nabellen incomplete dossiers
v 65 W_Nabellen incomplete dossiers
v 66 W_Valideren aanvraag
v 67 W_Nabellen incomplete dossiers
v 68 W_Valideren aanvraag
v 69 W_Valideren aanvraag
v 70 W_Valideren aanvraag
v 71 W_Valideren aanvraag
v 72 W_Valideren aanvraag
v 73 O_ACCEPTED
v 74 A_ACTIVATED
v 75 A_REGISTERED
v 76 A_APPROVED
v 77 W_Valideren aanvraag
v 78 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__A_ACCEPTED
e 13 14 A_ACCEPTED__O_SELECTED
e 13 15 A_ACCEPTED__A_FINALIZED
e 14 16 O_SELECTED__O_CREATED
e 15 16 A_FINALIZED__O_CREATED
e 16 17 O_CREATED__O_SENT
e 17 18 O_SENT__W_Nabellen offertes
e 18 19 W_Nabellen offertes__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__W_Nabellen offertes
e 20 21 W_Nabellen offertes__W_Nabellen offertes
e 21 22 W_Nabellen offertes__W_Nabellen offertes
e 22 23 W_Nabellen offertes__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Nabellen offertes
e 24 25 W_Nabellen offertes__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Nabellen offertes
e 26 27 W_Nabellen offertes__W_Nabellen offertes
e 27 28 W_Nabellen offertes__W_Nabellen offertes
e 28 29 W_Nabellen offertes__W_Nabellen offertes
e 29 30 W_Nabellen offertes__W_Nabellen offertes
e 30 31 W_Nabellen offertes__W_Nabellen offertes
e 31 32 W_Nabellen offertes__W_Nabellen offertes
e 32 33 W_Nabellen offertes__W_Nabellen offertes
e 33 34 W_Nabellen offertes__W_Nabellen offertes
e 34 35 W_Nabellen offertes__O_SENT_BACK
e 35 36 O_SENT_BACK__W_Valideren aanvraag
e 36 37 W_Valideren aanvraag__W_Nabellen offertes
e 37 38 W_Nabellen offertes__W_Valideren aanvraag
e 38 39 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 39 40 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 40 41 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 41 42 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 42 43 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 43 44 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 44 45 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 45 46 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 46 47 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 47 48 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 48 49 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 49 50 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 50 51 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 51 52 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 52 53 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 53 54 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 54 55 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 55 56 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 56 57 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 57 58 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 58 59 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 59 60 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 60 61 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 61 62 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 62 63 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 63 64 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 64 65 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 65 66 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 66 67 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 67 68 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 68 69 W_Valideren aanvraag__W_Valideren aanvraag
e 69 70 W_Valideren aanvraag__W_Valideren aanvraag
e 70 71 W_Valideren aanvraag__W_Valideren aanvraag
e 71 72 W_Valideren aanvraag__W_Valideren aanvraag
e 72 73 W_Valideren aanvraag__O_ACCEPTED
e 73 74 O_ACCEPTED__A_ACTIVATED
e 74 75 A_ACTIVATED__A_REGISTERED
e 75 76 A_REGISTERED__A_APPROVED
e 76 77 A_APPROVED__W_Valideren aanvraag
e 77 78 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_DECLINED
v 7 W_Afhandelen leads
v 8 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_DECLINED
e 6 7 A_DECLINED__W_Afhandelen leads
e 7 8 W_Afhandelen leads__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 A_ACCEPTED
v 12 A_FINALIZED
v 13 O_SELECTED
v 14 O_CREATED
v 15 O_SENT
v 16 W_Nabellen offertes
v 17 W_Completeren aanvraag
v 18 W_Nabellen offertes
v 19 O_SELECTED
v 20 O_CANCELLED
v 21 O_CREATED
v 22 O_SENT
v 23 W_Nabellen offertes
v 24 W_Nabellen offertes
v 25 W_Nabellen offertes
v 26 O_SENT_BACK
v 27 W_Valideren aanvraag
v 28 W_Nabellen offertes
v 29 W_Valideren aanvraag
v 30 W_Nabellen incomplete dossiers
v 31 W_Valideren aanvraag
v 32 W_Nabellen incomplete dossiers
v 33 W_Nabellen incomplete dossiers
v 34 W_Nabellen incomplete dossiers
v 35 W_Nabellen incomplete dossiers
v 36 W_Nabellen incomplete dossiers
v 37 W_Nabellen incomplete dossiers
v 38 W_Nabellen incomplete dossiers
v 39 O_SELECTED
v 40 O_CANCELLED
v 41 O_CREATED
v 42 O_SENT
v 43 W_Nabellen incomplete dossiers
v 44 W_Nabellen incomplete dossiers
v 45 W_Nabellen incomplete dossiers
v 46 W_Nabellen incomplete dossiers
v 47 W_Nabellen incomplete dossiers
v 48 O_SENT_BACK
v 49 W_Valideren aanvraag
v 50 W_Nabellen incomplete dossiers
v 51 W_Valideren aanvraag
v 52 O_ACCEPTED
v 53 A_APPROVED
v 54 A_REGISTERED
v 55 A_ACTIVATED
v 56 W_Valideren aanvraag
v 57 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__A_ACCEPTED
e 11 12 A_ACCEPTED__A_FINALIZED
e 11 13 A_ACCEPTED__O_SELECTED
e 12 14 A_FINALIZED__O_CREATED
e 13 14 O_SELECTED__O_CREATED
e 14 15 O_CREATED__O_SENT
e 15 16 O_SENT__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Nabellen offertes
e 18 19 W_Nabellen offertes__O_SELECTED
e 19 20 O_SELECTED__O_CANCELLED
e 20 21 O_CANCELLED__O_CREATED
e 21 22 O_CREATED__O_SENT
e 22 23 O_SENT__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Nabellen offertes
e 24 25 W_Nabellen offertes__W_Nabellen offertes
e 25 26 W_Nabellen offertes__O_SENT_BACK
e 26 27 O_SENT_BACK__W_Valideren aanvraag
e 27 28 W_Valideren aanvraag__W_Nabellen offertes
e 28 29 W_Nabellen offertes__W_Valideren aanvraag
e 29 30 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 30 31 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 31 32 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 32 33 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 33 34 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 34 35 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 35 36 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 36 37 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 37 38 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 38 39 W_Nabellen incomplete dossiers__O_SELECTED
e 39 40 O_SELECTED__O_CANCELLED
e 40 41 O_CANCELLED__O_CREATED
e 41 42 O_CREATED__O_SENT
e 42 43 O_SENT__W_Nabellen incomplete dossiers
e 43 44 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 44 45 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 45 46 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 46 47 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 47 48 W_Nabellen incomplete dossiers__O_SENT_BACK
e 48 49 O_SENT_BACK__W_Valideren aanvraag
e 49 50 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 50 51 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 51 52 W_Valideren aanvraag__O_ACCEPTED
e 52 53 O_ACCEPTED__A_APPROVED
e 53 54 A_APPROVED__A_REGISTERED
e 54 55 A_REGISTERED__A_ACTIVATED
e 55 56 A_ACTIVATED__W_Valideren aanvraag
e 56 57 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 A_ACCEPTED
v 12 O_SELECTED
v 13 A_FINALIZED
v 14 O_CREATED
v 15 O_SENT
v 16 W_Nabellen offertes
v 17 W_Completeren aanvraag
v 18 W_Nabellen offertes
v 19 W_Nabellen offertes
v 20 W_Nabellen offertes
v 21 W_Nabellen offertes
v 22 W_Nabellen offertes
v 23 O_SENT_BACK
v 24 W_Valideren aanvraag
v 25 W_Nabellen offertes
v 26 W_Valideren aanvraag
v 27 W_Valideren aanvraag
v 28 W_Valideren aanvraag
v 29 W_Nabellen incomplete dossiers
v 30 W_Valideren aanvraag
v 31 W_Nabellen incomplete dossiers
v 32 W_Nabellen incomplete dossiers
v 33 W_Nabellen incomplete dossiers
v 34 W_Nabellen incomplete dossiers
v 35 W_Nabellen incomplete dossiers
v 36 W_Nabellen incomplete dossiers
v 37 W_Nabellen incomplete dossiers
v 38 W_Nabellen incomplete dossiers
v 39 W_Nabellen incomplete dossiers
v 40 W_Nabellen incomplete dossiers
v 41 W_Nabellen incomplete dossiers
v 42 W_Valideren aanvraag
v 43 W_Nabellen incomplete dossiers
v 44 W_Valideren aanvraag
v 45 O_ACCEPTED
v 46 A_REGISTERED
v 47 A_APPROVED
v 48 A_ACTIVATED
v 49 W_Valideren aanvraag
v 50 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__A_ACCEPTED
e 11 12 A_ACCEPTED__O_SELECTED
e 11 13 A_ACCEPTED__A_FINALIZED
e 12 14 O_SELECTED__O_CREATED
e 13 14 A_FINALIZED__O_CREATED
e 14 15 O_CREATED__O_SENT
e 15 16 O_SENT__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Nabellen offertes
e 18 19 W_Nabellen offertes__W_Nabellen offertes
e 19 20 W_Nabellen offertes__W_Nabellen offertes
e 20 21 W_Nabellen offertes__W_Nabellen offertes
e 21 22 W_Nabellen offertes__W_Nabellen offertes
e 22 23 W_Nabellen offertes__O_SENT_BACK
e 23 24 O_SENT_BACK__W_Valideren aanvraag
e 24 25 W_Valideren aanvraag__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Valideren aanvraag
e 26 27 W_Valideren aanvraag__W_Valideren aanvraag
e 27 28 W_Valideren aanvraag__W_Valideren aanvraag
e 28 29 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 29 30 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 30 31 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 31 32 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 32 33 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 33 34 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 34 35 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 35 36 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 36 37 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 37 38 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 38 39 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 39 40 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 40 41 W_Nabellen incomplete dossiers__W_Nabellen incomplete dossiers
e 41 42 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 42 43 W_Valideren aanvraag__W_Nabellen incomplete dossiers
e 43 44 W_Nabellen incomplete dossiers__W_Valideren aanvraag
e 44 45 W_Valideren aanvraag__O_ACCEPTED
e 45 46 O_ACCEPTED__A_REGISTERED
e 46 47 A_REGISTERED__A_APPROVED
e 47 48 A_APPROVED__A_ACTIVATED
e 48 49 A_ACTIVATED__W_Valideren aanvraag
e 49 50 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_PREACCEPTED
v 7 W_Completeren aanvraag
v 8 W_Afhandelen leads
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 W_Completeren aanvraag
v 15 W_Completeren aanvraag
v 16 W_Completeren aanvraag
v 17 W_Completeren aanvraag
v 18 W_Completeren aanvraag
v 19 W_Completeren aanvraag
v 20 W_Completeren aanvraag
v 21 W_Completeren aanvraag
v 22 W_Completeren aanvraag
v 23 W_Completeren aanvraag
v 24 W_Completeren aanvraag
v 25 W_Completeren aanvraag
v 26 W_Completeren aanvraag
v 27 W_Completeren aanvraag
v 28 W_Completeren aanvraag
v 29 W_Completeren aanvraag
v 30 W_Completeren aanvraag
v 31 W_Completeren aanvraag
v 32 W_Completeren aanvraag
v 33 W_Completeren aanvraag
v 34 W_Completeren aanvraag
v 35 W_Completeren aanvraag
v 36 W_Completeren aanvraag
v 37 W_Completeren aanvraag
v 38 W_Completeren aanvraag
v 39 W_Completeren aanvraag
v 40 A_DECLINED
v 41 W_Completeren aanvraag
v 42 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_PREACCEPTED
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Afhandelen leads
e 8 9 W_Afhandelen leads__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Completeren aanvraag
e 14 15 W_Completeren aanvraag__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Completeren aanvraag
e 18 19 W_Completeren aanvraag__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__W_Completeren aanvraag
e 20 21 W_Completeren aanvraag__W_Completeren aanvraag
e 21 22 W_Completeren aanvraag__W_Completeren aanvraag
e 22 23 W_Completeren aanvraag__W_Completeren aanvraag
e 23 24 W_Completeren aanvraag__W_Completeren aanvraag
e 24 25 W_Completeren aanvraag__W_Completeren aanvraag
e 25 26 W_Completeren aanvraag__W_Completeren aanvraag
e 26 27 W_Completeren aanvraag__W_Completeren aanvraag
e 27 28 W_Completeren aanvraag__W_Completeren aanvraag
e 28 29 W_Completeren aanvraag__W_Completeren aanvraag
e 29 30 W_Completeren aanvraag__W_Completeren aanvraag
e 30 31 W_Completeren aanvraag__W_Completeren aanvraag
e 31 32 W_Completeren aanvraag__W_Completeren aanvraag
e 32 33 W_Completeren aanvraag__W_Completeren aanvraag
e 33 34 W_Completeren aanvraag__W_Completeren aanvraag
e 34 35 W_Completeren aanvraag__W_Completeren aanvraag
e 35 36 W_Completeren aanvraag__W_Completeren aanvraag
e 36 37 W_Completeren aanvraag__W_Completeren aanvraag
e 37 38 W_Completeren aanvraag__W_Completeren aanvraag
e 38 39 W_Completeren aanvraag__W_Completeren aanvraag
e 39 40 W_Completeren aanvraag__A_DECLINED
e 40 41 A_DECLINED__W_Completeren aanvraag
e 41 42 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_PREACCEPTED
v 7 W_Completeren aanvraag
v 8 W_Afhandelen leads
v 9 W_Completeren aanvraag
v 10 A_ACCEPTED
v 11 O_SELECTED
v 12 A_FINALIZED
v 13 O_CREATED
v 14 O_SENT
v 15 W_Nabellen offertes
v 16 W_Completeren aanvraag
v 17 W_Nabellen offertes
v 18 O_CANCELLED
v 19 A_CANCELLED
v 20 W_Nabellen offertes
v 21 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_PREACCEPTED
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Afhandelen leads
e 8 9 W_Afhandelen leads__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__A_ACCEPTED
e 10 11 A_ACCEPTED__O_SELECTED
e 10 12 A_ACCEPTED__A_FINALIZED
e 11 13 O_SELECTED__O_CREATED
e 12 13 A_FINALIZED__O_CREATED
e 13 14 O_CREATED__O_SENT
e 14 15 O_SENT__W_Nabellen offertes
e 15 16 W_Nabellen offertes__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Nabellen offertes
e 17 18 W_Nabellen offertes__O_CANCELLED
e 18 19 O_CANCELLED__A_CANCELLED
e 19 20 A_CANCELLED__W_Nabellen offertes
e 20 21 W_Nabellen offertes__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_PREACCEPTED
v 7 W_Completeren aanvraag
v 8 W_Afhandelen leads
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 W_Completeren aanvraag
v 15 W_Completeren aanvraag
v 16 W_Completeren aanvraag
v 17 W_Completeren aanvraag
v 18 A_ACCEPTED
v 19 A_FINALIZED
v 20 O_SELECTED
v 21 O_CREATED
v 22 O_SENT
v 23 W_Nabellen offertes
v 24 W_Completeren aanvraag
v 25 W_Nabellen offertes
v 26 W_Nabellen offertes
v 27 W_Nabellen offertes
v 28 O_CANCELLED
v 29 O_SELECTED
v 30 O_CREATED
v 31 O_SENT
v 32 W_Nabellen offertes
v 33 W_Nabellen offertes
v 34 W_Nabellen offertes
v 35 W_Nabellen offertes
v 36 W_Nabellen offertes
v 37 A_DECLINED
v 38 O_DECLINED
v 39 W_Nabellen offertes
v 40 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_PREACCEPTED
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Afhandelen leads
e 8 9 W_Afhandelen leads__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Completeren aanvraag
e 14 15 W_Completeren aanvraag__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__A_ACCEPTED
e 18 19 A_ACCEPTED__A_FINALIZED
e 19 20 A_FINALIZED__O_SELECTED
e 20 21 O_SELECTED__O_CREATED
e 21 22 O_CREATED__O_SENT
e 22 23 O_SENT__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Completeren aanvraag
e 24 25 W_Completeren aanvraag__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Nabellen offertes
e 26 27 W_Nabellen offertes__W_Nabellen offertes
e 27 28 W_Nabellen offertes__O_CANCELLED
e 28 29 O_CANCELLED__O_SELECTED
e 29 30 O_SELECTED__O_CREATED
e 30 31 O_CREATED__O_SENT
e 31 32 O_SENT__W_Nabellen offertes
e 32 33 W_Nabellen offertes__W_Nabellen offertes
e 33 34 W_Nabellen offertes__W_Nabellen offertes
e 34 35 W_Nabellen offertes__W_Nabellen offertes
e 35 36 W_Nabellen offertes__W_Nabellen offertes
e 36 37 W_Nabellen offertes__A_DECLINED
e 37 38 A_DECLINED__O_DECLINED
e 38 39 O_DECLINED__W_Nabellen offertes
e 39 40 W_Nabellen offertes__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 A_ACCEPTED
v 10 A_FINALIZED
v 11 O_SELECTED
v 12 O_CREATED
v 13 O_SENT
v 14 W_Nabellen offertes
v 15 W_Completeren aanvraag
v 16 W_Nabellen offertes
v 17 O_SENT_BACK
v 18 W_Valideren aanvraag
v 19 W_Nabellen offertes
v 20 W_Valideren aanvraag
v 21 O_ACCEPTED
v 22 A_REGISTERED
v 23 A_ACTIVATED
v 24 A_APPROVED
v 25 W_Valideren aanvraag
v 26 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__A_ACCEPTED
e 9 10 A_ACCEPTED__A_FINALIZED
e 9 11 A_ACCEPTED__O_SELECTED
e 10 12 A_FINALIZED__O_CREATED
e 11 12 O_SELECTED__O_CREATED
e 12 13 O_CREATED__O_SENT
e 13 14 O_SENT__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Nabellen offertes
e 16 17 W_Nabellen offertes__O_SENT_BACK
e 17 18 O_SENT_BACK__W_Valideren aanvraag
e 18 19 W_Valideren aanvraag__W_Nabellen offertes
e 19 20 W_Nabellen offertes__W_Valideren aanvraag
e 20 21 W_Valideren aanvraag__O_ACCEPTED
e 20 22 W_Valideren aanvraag__A_REGISTERED
e 20 23 W_Valideren aanvraag__A_ACTIVATED
e 20 24 W_Valideren aanvraag__A_APPROVED
e 21 25 O_ACCEPTED__W_Valideren aanvraag
e 22 25 A_REGISTERED__W_Valideren aanvraag
e 23 25 A_ACTIVATED__W_Valideren aanvraag
e 24 25 A_APPROVED__W_Valideren aanvraag
e 25 26 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 W_Completeren aanvraag
v 15 W_Completeren aanvraag
v 16 W_Completeren aanvraag
v 17 W_Completeren aanvraag
v 18 W_Completeren aanvraag
v 19 W_Completeren aanvraag
v 20 W_Completeren aanvraag
v 21 W_Completeren aanvraag
v 22 W_Completeren aanvraag
v 23 W_Completeren aanvraag
v 24 W_Completeren aanvraag
v 25 W_Completeren aanvraag
v 26 W_Completeren aanvraag
v 27 W_Completeren aanvraag
v 28 W_Completeren aanvraag
v 29 W_Completeren aanvraag
v 30 W_Completeren aanvraag
v 31 W_Completeren aanvraag
v 32 W_Completeren aanvraag
v 33 W_Completeren aanvraag
v 34 W_Completeren aanvraag
v 35 W_Completeren aanvraag
v 36 W_Completeren aanvraag
v 37 W_Beoordelen fraude
v 38 W_Completeren aanvraag
v 39 W_Beoordelen fraude
v 40 W_Beoordelen fraude
v 41 W_Beoordelen fraude
v 42 A_DECLINED
v 43 W_Beoordelen fraude
v 44 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Completeren aanvraag
e 14 15 W_Completeren aanvraag__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Completeren aanvraag
e 18 19 W_Completeren aanvraag__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__W_Completeren aanvraag
e 20 21 W_Completeren aanvraag__W_Completeren aanvraag
e 21 22 W_Completeren aanvraag__W_Completeren aanvraag
e 22 23 W_Completeren aanvraag__W_Completeren aanvraag
e 23 24 W_Completeren aanvraag__W_Completeren aanvraag
e 24 25 W_Completeren aanvraag__W_Completeren aanvraag
e 25 26 W_Completeren aanvraag__W_Completeren aanvraag
e 26 27 W_Completeren aanvraag__W_Completeren aanvraag
e 27 28 W_Completeren aanvraag__W_Completeren aanvraag
e 28 29 W_Completeren aanvraag__W_Completeren aanvraag
e 29 30 W_Completeren aanvraag__W_Completeren aanvraag
e 30 31 W_Completeren aanvraag__W_Completeren aanvraag
e 31 32 W_Completeren aanvraag__W_Completeren aanvraag
e 32 33 W_Completeren aanvraag__W_Completeren aanvraag
e 33 34 W_Completeren aanvraag__W_Completeren aanvraag
e 34 35 W_Completeren aanvraag__W_Completeren aanvraag
e 35 36 W_Completeren aanvraag__W_Completeren aanvraag
e 36 37 W_Completeren aanvraag__W_Beoordelen fraude
e 37 38 W_Beoordelen fraude__W_Completeren aanvraag
e 38 39 W_Completeren aanvraag__W_Beoordelen fraude
e 39 40 W_Beoordelen fraude__W_Beoordelen fraude
e 40 41 W_Beoordelen fraude__W_Beoordelen fraude
e 41 42 W_Beoordelen fraude__A_DECLINED
e 42 43 A_DECLINED__W_Beoordelen fraude
e 43 44 W_Beoordelen fraude__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 A_ACCEPTED
v 8 A_FINALIZED
v 9 O_SELECTED
v 10 O_CREATED
v 11 O_SENT
v 12 W_Nabellen offertes
v 13 W_Completeren aanvraag
v 14 W_Nabellen offertes
v 15 W_Nabellen offertes
v 16 W_Nabellen offertes
v 17 W_Nabellen offertes
v 18 W_Nabellen offertes
v 19 O_SENT_BACK
v 20 W_Valideren aanvraag
v 21 W_Nabellen offertes
v 22 W_Valideren aanvraag
v 23 A_APPROVED
v 24 A_ACTIVATED
v 25 A_REGISTERED
v 26 O_ACCEPTED
v 27 W_Valideren aanvraag
v 28 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__A_ACCEPTED
e 7 8 A_ACCEPTED__A_FINALIZED
e 7 9 A_ACCEPTED__O_SELECTED
e 8 10 A_FINALIZED__O_CREATED
e 9 10 O_SELECTED__O_CREATED
e 10 11 O_CREATED__O_SENT
e 11 12 O_SENT__W_Nabellen offertes
e 12 13 W_Nabellen offertes__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Nabellen offertes
e 15 16 W_Nabellen offertes__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Nabellen offertes
e 17 18 W_Nabellen offertes__W_Nabellen offertes
e 18 19 W_Nabellen offertes__O_SENT_BACK
e 19 20 O_SENT_BACK__W_Valideren aanvraag
e 20 21 W_Valideren aanvraag__W_Nabellen offertes
e 21 22 W_Nabellen offertes__W_Valideren aanvraag
e 22 23 W_Valideren aanvraag__A_APPROVED
e 23 24 A_APPROVED__A_ACTIVATED
e 24 25 A_ACTIVATED__A_REGISTERED
e 25 26 A_REGISTERED__O_ACCEPTED
e 26 27 O_ACCEPTED__W_Valideren aanvraag
e 27 28 W_Valideren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_DECLINED
v 7 W_Afhandelen leads
v 8 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_DECLINED
e 6 7 A_DECLINED__W_Afhandelen leads
e 7 8 W_Afhandelen leads__END

XP
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 W_Completeren aanvraag
v 10 W_Completeren aanvraag
v 11 W_Completeren aanvraag
v 12 W_Completeren aanvraag
v 13 W_Completeren aanvraag
v 14 W_Completeren aanvraag
v 15 W_Completeren aanvraag
v 16 W_Completeren aanvraag
v 17 W_Completeren aanvraag
v 18 W_Completeren aanvraag
v 19 W_Completeren aanvraag
v 20 W_Completeren aanvraag
v 21 W_Completeren aanvraag
v 22 W_Completeren aanvraag
v 23 W_Completeren aanvraag
v 24 W_Completeren aanvraag
v 25 W_Completeren aanvraag
v 26 W_Completeren aanvraag
v 27 W_Completeren aanvraag
v 28 W_Completeren aanvraag
v 29 A_CANCELLED
v 30 W_Completeren aanvraag
v 31 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__W_Completeren aanvraag
e 9 10 W_Completeren aanvraag__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__W_Completeren aanvraag
e 11 12 W_Completeren aanvraag__W_Completeren aanvraag
e 12 13 W_Completeren aanvraag__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Completeren aanvraag
e 14 15 W_Completeren aanvraag__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Completeren aanvraag
e 16 17 W_Completeren aanvraag__W_Completeren aanvraag
e 17 18 W_Completeren aanvraag__W_Completeren aanvraag
e 18 19 W_Completeren aanvraag__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__W_Completeren aanvraag
e 20 21 W_Completeren aanvraag__W_Completeren aanvraag
e 21 22 W_Completeren aanvraag__W_Completeren aanvraag
e 22 23 W_Completeren aanvraag__W_Completeren aanvraag
e 23 24 W_Completeren aanvraag__W_Completeren aanvraag
e 24 25 W_Completeren aanvraag__W_Completeren aanvraag
e 25 26 W_Completeren aanvraag__W_Completeren aanvraag
e 26 27 W_Completeren aanvraag__W_Completeren aanvraag
e 27 28 W_Completeren aanvraag__W_Completeren aanvraag
e 28 29 W_Completeren aanvraag__A_CANCELLED
e 29 30 A_CANCELLED__W_Completeren aanvraag
e 30 31 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_DECLINED
v 5 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_DECLINED
e 4 5 A_DECLINED__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 W_Completeren aanvraag
v 8 W_Completeren aanvraag
v 9 A_DECLINED
v 10 W_Completeren aanvraag
v 11 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__W_Completeren aanvraag
e 7 8 W_Completeren aanvraag__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__A_DECLINED
e 9 10 A_DECLINED__W_Completeren aanvraag
e 10 11 W_Completeren aanvraag__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 W_Afhandelen leads
v 5 W_Afhandelen leads
v 6 A_DECLINED
v 7 W_Afhandelen leads
v 8 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__W_Afhandelen leads
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 6 W_Afhandelen leads__A_DECLINED
e 6 7 A_DECLINED__W_Afhandelen leads
e 7 8 W_Afhandelen leads__END

XP 
v 1 START
v 2 A_SUBMITTED
v 3 A_PARTLYSUBMITTED
v 4 A_PREACCEPTED
v 5 W_Completeren aanvraag
v 6 W_Completeren aanvraag
v 7 A_DECLINED
v 8 W_Completeren aanvraag
v 9 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__A_DECLINED
e 7 8 A_DECLINED__W_Completeren aanvraag
e 8 9 W_Completeren aanvraag__END
