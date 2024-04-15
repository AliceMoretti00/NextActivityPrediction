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
v 19 O_SENT_BACK
v 20 W_Valideren aanvraag
v 21 W_Nabellen offertes
v 22 W_Valideren aanvraag
v 23 A_REGISTERED
v 24 A_APPROVED
v 25 O_ACCEPTED
v 26 A_ACTIVATED
v 27 W_Valideren aanvraag
v 28 END
e 1 2 START__A_SUBMITTED
e 2 3 A_SUBMITTED__A_PARTLYSUBMITTED
e 3 4 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 A_PREACCEPTED__W_Completeren aanvraag
e 5 6 W_Completeren aanvraag__W_Completeren aanvraag
e 6 7 W_Completeren aanvraag__A_ACCEPTED
e 7 8 A_ACCEPTED__O_SELECTED
e 7 9 A_ACCEPTED__A_FINALIZED
e 7 10 A_ACCEPTED__O_CREATED
e 8 12 O_SELECTED__W_Nabellen offertes
e 9 12 A_FINALIZED__W_Nabellen offertes
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
e 22 23 W_Valideren aanvraag__A_REGISTERED
e 23 24 A_REGISTERED__A_APPROVED
e 24 25 A_APPROVED__O_ACCEPTED
e 25 26 O_ACCEPTED__A_ACTIVATED
e 26 27 A_ACTIVATED__W_Valideren aanvraag
e 27 28 W_Valideren aanvraag__END

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
v 17 W_Nabellen offertes
v 18 W_Nabellen offertes
v 19 O_SELECTED
v 20 O_CANCELLED
v 21 O_CREATED
v 22 O_SENT
v 23 W_Nabellen offertes
v 24 W_Nabellen offertes
v 25 W_Nabellen offertes
v 26 W_Nabellen offertes
v 27 W_Nabellen offertes
v 28 O_SENT_BACK
v 29 W_Valideren aanvraag
v 30 W_Nabellen offertes
v 31 W_Valideren aanvraag
v 32 W_Valideren aanvraag
v 33 W_Valideren aanvraag
v 34 W_Valideren aanvraag
v 35 W_Valideren aanvraag
v 36 O_ACCEPTED
v 37 A_APPROVED
v 38 A_REGISTERED
v 39 A_ACTIVATED
v 40 W_Valideren aanvraag
v 41 END
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
e 9 12 A_ACCEPTED__O_CREATED
e 10 23 A_FINALIZED__W_Nabellen offertes
e 11 19 O_SELECTED__O_SELECTED
e 12 13 O_CREATED__O_SENT
e 13 14 O_SENT__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Completeren aanvraag
e 15 16 W_Completeren aanvraag__W_Nabellen offertes
e 16 17 W_Nabellen offertes__W_Nabellen offertes
e 17 18 W_Nabellen offertes__W_Nabellen offertes
e 18 20 W_Nabellen offertes__O_CANCELLED
e 19 23 O_SELECTED__W_Nabellen offertes
e 20 21 O_CANCELLED__O_CREATED
e 21 22 O_CREATED__O_SENT
e 22 23 O_SENT__W_Nabellen offertes
e 23 24 W_Nabellen offertes__W_Nabellen offertes
e 24 25 W_Nabellen offertes__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Nabellen offertes
e 26 27 W_Nabellen offertes__W_Nabellen offertes
e 27 28 W_Nabellen offertes__O_SENT_BACK
e 28 29 O_SENT_BACK__W_Valideren aanvraag
e 29 30 W_Valideren aanvraag__W_Nabellen offertes
e 30 31 W_Nabellen offertes__W_Valideren aanvraag
e 31 32 W_Valideren aanvraag__W_Valideren aanvraag
e 32 33 W_Valideren aanvraag__W_Valideren aanvraag
e 33 34 W_Valideren aanvraag__W_Valideren aanvraag
e 34 35 W_Valideren aanvraag__W_Valideren aanvraag
e 35 36 W_Valideren aanvraag__O_ACCEPTED
e 36 37 O_ACCEPTED__A_APPROVED
e 37 38 A_APPROVED__A_REGISTERED
e 38 39 A_REGISTERED__A_ACTIVATED
e 39 40 A_ACTIVATED__W_Valideren aanvraag
e 40 41 W_Valideren aanvraag__END

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
v 14 A_FINALIZED
v 15 O_SELECTED
v 16 O_CREATED
v 17 O_SENT
v 18 W_Nabellen offertes
v 19 W_Completeren aanvraag
v 20 W_Nabellen offertes
v 21 O_SELECTED
v 22 O_CANCELLED
v 23 O_CREATED
v 24 O_SENT
v 25 W_Nabellen offertes
v 26 W_Nabellen offertes
v 27 W_Nabellen offertes
v 28 W_Nabellen offertes
v 29 W_Nabellen offertes
v 30 W_Nabellen offertes
v 31 W_Nabellen offertes
v 32 W_Nabellen offertes
v 33 W_Nabellen offertes
v 34 O_SELECTED
v 35 O_CANCELLED
v 36 O_CREATED
v 37 O_SENT
v 38 W_Nabellen offertes
v 39 W_Nabellen offertes
v 40 W_Nabellen offertes
v 41 W_Nabellen offertes
v 42 W_Nabellen offertes
v 43 W_Nabellen offertes
v 44 W_Nabellen offertes
v 45 W_Nabellen offertes
v 46 W_Nabellen offertes
v 47 W_Nabellen offertes
v 48 W_Nabellen offertes
v 49 W_Nabellen offertes
v 50 W_Nabellen offertes
v 51 O_SENT_BACK
v 52 W_Valideren aanvraag
v 53 W_Nabellen offertes
v 54 W_Valideren aanvraag
v 55 O_ACCEPTED
v 56 A_APPROVED
v 57 A_REGISTERED
v 58 A_ACTIVATED
v 59 W_Valideren aanvraag
v 60 W_Wijzigen contractgegevens
v 61 END
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
e 13 14 A_ACCEPTED__A_FINALIZED
e 14 15 A_FINALIZED__O_SELECTED
e 15 16 O_SELECTED__O_CREATED
e 16 17 O_CREATED__O_SENT
e 17 18 O_SENT__W_Nabellen offertes
e 18 19 W_Nabellen offertes__W_Completeren aanvraag
e 19 20 W_Completeren aanvraag__W_Nabellen offertes
e 20 21 W_Nabellen offertes__O_SELECTED
e 21 22 O_SELECTED__O_CANCELLED
e 22 23 O_CANCELLED__O_CREATED
e 23 24 O_CREATED__O_SENT
e 24 25 O_SENT__W_Nabellen offertes
e 25 26 W_Nabellen offertes__W_Nabellen offertes
e 26 27 W_Nabellen offertes__W_Nabellen offertes
e 27 28 W_Nabellen offertes__W_Nabellen offertes
e 28 29 W_Nabellen offertes__W_Nabellen offertes
e 29 30 W_Nabellen offertes__W_Nabellen offertes
e 30 31 W_Nabellen offertes__W_Nabellen offertes
e 31 32 W_Nabellen offertes__W_Nabellen offertes
e 32 33 W_Nabellen offertes__W_Nabellen offertes
e 33 34 W_Nabellen offertes__O_SELECTED
e 34 35 O_SELECTED__O_CANCELLED
e 35 36 O_CANCELLED__O_CREATED
e 36 37 O_CREATED__O_SENT
e 37 38 O_SENT__W_Nabellen offertes
e 38 39 W_Nabellen offertes__W_Nabellen offertes
e 39 40 W_Nabellen offertes__W_Nabellen offertes
e 40 41 W_Nabellen offertes__W_Nabellen offertes
e 41 42 W_Nabellen offertes__W_Nabellen offertes
e 42 43 W_Nabellen offertes__W_Nabellen offertes
e 43 44 W_Nabellen offertes__W_Nabellen offertes
e 44 45 W_Nabellen offertes__W_Nabellen offertes
e 45 46 W_Nabellen offertes__W_Nabellen offertes
e 46 47 W_Nabellen offertes__W_Nabellen offertes
e 47 48 W_Nabellen offertes__W_Nabellen offertes
e 48 49 W_Nabellen offertes__W_Nabellen offertes
e 49 50 W_Nabellen offertes__W_Nabellen offertes
e 50 51 W_Nabellen offertes__O_SENT_BACK
e 51 52 O_SENT_BACK__W_Valideren aanvraag
e 52 53 W_Valideren aanvraag__W_Nabellen offertes
e 53 54 W_Nabellen offertes__W_Valideren aanvraag
e 54 55 W_Valideren aanvraag__O_ACCEPTED
e 55 56 O_ACCEPTED__A_APPROVED
e 56 57 A_APPROVED__A_REGISTERED
e 57 58 A_REGISTERED__A_ACTIVATED
e 58 59 A_ACTIVATED__W_Valideren aanvraag
e 59 60 W_Valideren aanvraag__W_Wijzigen contractgegevens
e 60 61 W_Wijzigen contractgegevens__END

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
e 3 6 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 7 W_Afhandelen leads__W_Completeren aanvraag
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
e 3 6 A_PARTLYSUBMITTED__A_PREACCEPTED
e 4 5 W_Afhandelen leads__W_Afhandelen leads
e 5 8 W_Afhandelen leads__W_Afhandelen leads
e 6 7 A_PREACCEPTED__W_Completeren aanvraag
e 7 9 W_Completeren aanvraag__W_Completeren aanvraag
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
e 9 12 A_ACCEPTED__O_CREATED
e 10 14 O_SELECTED__W_Nabellen offertes
e 11 14 A_FINALIZED__W_Nabellen offertes
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
e 7 10 A_ACCEPTED__O_CREATED
e 8 21 A_FINALIZED__W_Nabellen offertes
e 9 17 O_SELECTED__O_SELECTED
e 10 11 O_CREATED__O_SENT
e 11 12 O_SENT__W_Nabellen offertes
e 12 13 W_Nabellen offertes__W_Completeren aanvraag
e 13 14 W_Completeren aanvraag__W_Nabellen offertes
e 14 15 W_Nabellen offertes__W_Nabellen offertes
e 15 16 W_Nabellen offertes__W_Nabellen offertes
e 16 18 W_Nabellen offertes__O_CANCELLED
e 17 21 O_SELECTED__W_Nabellen offertes
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

