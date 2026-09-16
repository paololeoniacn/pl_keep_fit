# WOD 4 — Functional

> **Filosofia:** Poco di tutto, non tutto di poco — massimizzare gli schemi motori e le
> capacità condizionali; il centro del corpo fa da transfer al resto. Longevità prima della massa.
> (dal voiceover del reel sorgente — testo completo nella sezione *Filosofia* in fondo)

Circuito full-body a corpo libero. Formato **a tempo**: 40" lavoro / 20" recupero,
**3 giri** (~21 min totali). Nessuna attrezzatura, solo un tappetino.

Fonte: reel Instagram @lupasportclub / @lucattack__ (vedi [`../NEWS/scheda.md`](../NEWS/scheda.md)),
adattato agli obiettivi anti-lordosi di Paolo.

## Struttura

- **3 giri** del circuito
- Ogni movimento: **40" lavoro → 20" recupero**
- 10" di "Preparati" all'inizio

## Circuito (7 movimenti)

| # | Movimento | Target | Note |
|---|---|---|---|
| 1 | **Plank to Down-Dog** | Core, spalle, mobilità | Da plank spingi i fianchi in alto (down-dog), torna in plank, aggiungi una rotazione del busto |
| 2 | **Cossack Squat** | Gambe, anche, mobilità | Piedi molto larghi, scendi su una gamba con l'altra tesa, sposta il peso lato-lato |
| 3 | **Single-leg Glute Bridge** | Glutei, catena posteriore | Supino, un piede a terra, l'altra gamba tesa, spinta d'anca — cambia gamba a metà |
| 4 | **Plank Leg Raise** | Glutei, core anti-estensione | In plank alto, solleva una gamba tesa in alto stringendo il gluteo, alterna, bacino fermo |
| 5 | **Bear Knee-Drive** | Core, flessori d'anca | Posizione bear, ginocchia a 2 cm, guida il ginocchio verso il petto, schiena piatta |
| 6 | **Spider-man Climber** | Obliqui, mobilità anca | In plank alto, ginocchio verso il gomito omolaterale, alterna, bacino basso |
| 7 | **Dead Bug** | Core anti-estensione | Supino, lombare incollata, allunga gamba+braccio opposti, non inarcare mai |

## Nota di programmazione

Il reel originale chiudeva con un **kneeling lean-back**, sostituito con **Dead Bug**:
il lean-back carica i flessori d'anca in estensione → rischio iperlordosi, in conflitto
con il lavoro anti-lordosi / pooch belly di Paolo (vedi [`../POSTURA/scheda.md`](../POSTURA/scheda.md)).
Dead Bug è anti-estensione puro e rinforza quel lavoro.

## Filosofia (dal voiceover del reel)

Il voiceover del reel non spiega gli esercizi ma il **perché**. È lo spirito guida di
questo WOD e dei prossimi. Trascrizione (mlx-whisper; corrette due parole: *forza*,
*propriocezione*):

> Fatto per fare **poco di tutto e non tutto di poco**: di conseguenza, bello essere
> grossi ma ancor più bello **vivere a lungo**. Fai dunque un allenamento funzionale,
> poiché è uno di quelli che sviluppa il **maggior numero possibile di schemi motori**.
> Ti mostro uno dei miei preferiti perché si concentra sullo sviluppo di tutte le
> **capacità condizionali** — forza, resistenza, propriocezione, stabilità, mobilità,
> rapidità, flessibilità — dell'addome e del lombare, quindi del **centro del corpo,
> che una volta allenato trasferisce tutte queste cose al resto del corpo**. Questo
> allenamento può fungere da allenamento oppure da **riscaldamento** per ogni altro.

**I principi da portare nei WOD futuri:**
- *Generalista, non specialista*: poco di tutto, non tutto di poco.
- *Longevità prima dell'ipertrofia*: allenarsi per vivere a lungo, non solo per la massa.
- *Massimizzare gli schemi motori* e le capacità condizionali (forza, resistenza,
  propriocezione, stabilità, mobilità, rapidità, flessibilità).
- *Il centro del corpo governa tutto*: allenato il core, il transfer va al resto del corpo
  → è la tesi diretta del [WOD 6](../WOD_6/scheda.md).
- *Doppio uso*: può essere l'allenamento o il riscaldamento di un altro.

## Implementazione

Engine `W4` in `BARE.html`. Parametri regolabili in cima all'engine:
`W4_ROUNDS` (3), `W4_WORK` (40), `W4_REST` (20). Colore tema: ciano (`--w4`).
