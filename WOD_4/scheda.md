# WOD 4 — Functional

Circuito full-body a corpo libero. Formato **a tempo**: 40" lavoro / 20" recupero,
**3 giri** (~15 min totali). Nessuna attrezzatura, solo un tappetino.

Fonte: reel Instagram @lupasportclub / @lucattack__ (vedi [`../NEWS/scheda.md`](../NEWS/scheda.md)),
adattato agli obiettivi anti-lordosi di Paolo.

## Struttura

- **3 giri** del circuito
- Ogni movimento: **40" lavoro → 20" recupero**
- 10" di "Preparati" all'inizio

## Circuito (5 movimenti)

| # | Movimento | Target | Note |
|---|---|---|---|
| 1 | **Side Plank Rotation** | Obliqui, spalle, core | Plank laterale su una mano, ruota il busto passando il braccio sotto, riapri verso il soffitto — cambia lato a metà |
| 2 | **Single-leg Glute Bridge** | Glutei, catena posteriore | Supino, un piede a terra, l'altra gamba tesa, spinta d'anca — cambia gamba a metà |
| 3 | **Bear Knee-Drive** | Core, flessori d'anca | Posizione bear, ginocchia a 2 cm, guida il ginocchio verso il petto, schiena piatta |
| 4 | **Spider-man Climber** | Obliqui, mobilità anca | In plank alto, ginocchio verso il gomito omolaterale, alterna, bacino basso |
| 5 | **Dead Bug** | Core anti-estensione | Supino, lombare incollata, allunga gamba+braccio opposti, non inarcare mai |

## Nota di programmazione

Il reel originale chiudeva con un **kneeling lean-back**, sostituito con **Dead Bug**:
il lean-back carica i flessori d'anca in estensione → rischio iperlordosi, in conflitto
con il lavoro anti-lordosi / pooch belly di Paolo (vedi [`../POSTURA/scheda.md`](../POSTURA/scheda.md)).
Dead Bug è anti-estensione puro e rinforza quel lavoro.

## Implementazione

Engine `W4` in `BARE.html`. Parametri regolabili in cima all'engine:
`W4_ROUNDS` (3), `W4_WORK` (40), `W4_REST` (20). Colore tema: ciano (`--w4`).
