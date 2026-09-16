# WOD 5 · Candidato C — Death by Burpees

Sfida **EMOM a scala crescente**: gamificata, auto-scalante, contro te stesso.
Perfetta per lo sfogo con un obiettivo ("quanto arrivo lontano oggi?").

## Come funziona
- **EMOM** (Every Minute On the Minute): allo scoccare di ogni minuto fai le reps previste.
- Le reps **crescono di 1 ogni minuto**:
  - Minuto 1 → 1 burpee
  - Minuto 2 → 2 burpee
  - Minuto 3 → 3 burpee … e così via.
- Il tempo che avanza nel minuto è il tuo recupero: più sali, meno riposi.
- **Fine**: quando non completi le reps entro il minuto. Il tuo **punteggio = ultimo minuto completato**.

## Riferimento sforzo
| Minuto | Reps | Reps totali cumulate |
|---|---|---|
| 5  | 5  | 15 |
| 8  | 8  | 36 |
| 10 | 10 | 55 |
| 12 | 12 | 78 |
| 15 | 15 | 120 |

Arrivare al **minuto 10** è già ottimo. Al 15 sei una bestia.

## Nota per te (anti-lordosi)
- Il rischio nel burpee è la fase plank/push-up con lombare che cede: tieni **addome attivo**
  e bacino in linea, non lasciar sprofondare i fianchi.
- Se i burpee completi ti stancano la schiena prima delle gambe, scala a **half-burpee**
  (senza push-up) o **squat thrust** — stesso schema a scala.

## Come sarebbe in app
Engine `W5` con **timer EMOM** e contatore reps crescente. Salva il record personale
(localStorage) per battere te stesso. Schermata fine con "sei arrivato al minuto X".
Media complessità: la logica EMOM + record è più della Tabata ma meno del percorso 30 giorni.
