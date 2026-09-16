# WOD 6 — Core Engine

> **Filosofia:** Il core governa tutto — stabilità, propriocezione, forza. Non un muscolo
> tra tanti: il centro da cui parte e si scarica ogni movimento.

Sessione **breve e completa** dedicata solo al core, ma non noiosa: alterna
**transizioni** (controllo e propriocezione) ed **esercizi esplosivi** (forza reattiva),
tenendo sempre il bacino neutro (anti-lordosi).

## Struttura (proposta — da confermare)

- **6 movimenti**, formato a tempo **30" lavoro / 15" recupero**
- **2 giri** → ~9 minuti totali (+ 10" di "Preparati")
- Corto e dritto al punto.

## Circuito (6 movimenti)

| # | Movimento | Tipo | Cosa allena |
|---|---|---|---|
| 1 | **Sit-through** | Transizione | Da bear, ruota il bacino e passa una gamba sotto il corpo, alterna — rotazione e propriocezione |
| 2 | **Hollow Hold** | Stabilità | "Barchetta" tesa, lombare incollata — anti-estensione, la base di tutto |
| 3 | **Tuck-up** | Esplosivo | Da supino/seduto, richiama esplosivo le ginocchia al petto e ridistendi |
| 4 | **Bird-dog** | Stabilità | A quattro zampe, braccio+gamba opposti tesi, bacino fermo — anti-rotazione |
| 5 | **Plank to Pike** | Transizione | Da plank spingi il bacino a "V" (pike) e torna, controllo dinamico |
| 6 | **Mountain Climber esplosivo** | Esplosivo | In plank, ginocchia al petto veloci e ritmate, addome di pietra |

**Mix**: 2 transizioni (1, 5) · 2 esplosivi (3, 6) · 2 stabilità (2, 4).
Tutti a colonna neutra — nessun carico in estensione lombare.

## Perché queste scelte
- Il **core governa** stabilità (hollow, bird-dog), propriocezione (sit-through, plank-to-pike)
  e forza reattiva (tuck-up, mountain climber): la sessione tocca tutte e tre in ~9 min.
- Coerente con gli obiettivi anti-lordosi: hollow, bird-dog e tuck-up sono anti-estensione.

## Implementazione (quando confermi)
Nuovo engine `W6` in `BARE.html`, stesso pattern del WOD 4 (circuito a tempo con giri).
Parametri: `W6_ROUNDS` (2), `W6_WORK` (30), `W6_REST` (15). Colore tema da scegliere.
