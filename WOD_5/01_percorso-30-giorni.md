# WOD 5 · Candidato A — Percorso 30 Giorni

Un **cammino progressivo** a corpo libero: cambia ogni giorno, avanzi per 30 giorni,
l'app ricorda a che giorno sei (localStorage). Copre sia la **varietà** (rotazione di
3 tipi di giornata) sia lo **sfogo** (una giornata cardio ogni ciclo).

## Come funziona
- Rotazione di 4 giorni: **A → B → C → Riposo**, ripetuta per 30 giorni.
- I volumi **crescono di settimana in settimana** (vedi tabella).
- L'app mostra "Giorno X / 30" e sblocca il giorno successivo dopo il completamento.

## I 3 tipi di giornata

| Giorno | Tema | Movimenti |
|---|---|---|
| **A** | Push & Core | Push-up · Pike push-up · Plank · Dead Bug |
| **B** | Gambe & Glutei | Squat · Single-leg glute bridge · Affondi · Wall sit |
| **C** | Cardio Sfogo | Burpees · Mountain climber · High knees · Jumping jack |

## Progressione settimanale (reps / durata per movimento)

| Settimana | Push/Core | Gambe/Glutei | Cardio (per esercizio) |
|---|---|---|---|
| 1 (g. 1–7)  | 3×8   | 3×12  | 3× 30" |
| 2 (g. 8–14) | 3×12  | 3×15  | 3× 40" |
| 3 (g. 15–21)| 4×12  | 4×15  | 4× 40" |
| 4 (g. 22–30)| 4×15  | 4×20  | 4× 45" |

## Nota per te (anti-lordosi)
- Niente estensione lombare caricata: plank e dead bug tengono il core anti-estensione.
- Il single-leg glute bridge è il tuo alleato n.1 contro l'anteroversione — presente ogni ciclo.
- Wall sit e pike push-up non caricano la lombare.

## Come sarebbe in app
Nuovo engine `W5` con **stato salvato** (`localStorage`): giorno corrente, giorni completati.
Il più ambizioso dei 4 (serve gestione stato + schermata "calendario/progresso"), ma è
quello che dà più senso di *percorso* e più varietà nel tempo.
