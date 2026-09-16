# NEWS — Reel candidati per nuovi WOD

Raccolta di reel Instagram salvati come spunto per nuovi allenamenti.
Estrazione fatta con ffmpeg (1 frame ogni 2s). **I reel non hanno overlay con
reps/serie/tempi** — solo dimostrazione dei movimenti + musica strumentale.
Quindi sotto trovi i movimenti *identificati visivamente*; reps e struttura sono
una **proposta da confermare**, non dati presi dal video.

---

## Reel 1 — "Functional Training" (@lupasportclub / @lucattack__)

File: `Screen_Recording_20260914_193933_Instagram.mp4` · 34s · circuito corpo libero a terra.

Movimenti identificati (nell'ordine mostrato):

| # | Movimento | Cosa si vede | Target |
|---|---|---|---|
| 1 | **Side plank / plank rotation** | Da plank laterale, appoggio su una mano, corpo in linea diagonale | Obliqui, spalle, core |
| 2 | **Single-leg glute bridge** | Supino, un piede a terra, l'altra gamba tesa, spinta d'anca | Glutei, catena posteriore |
| 3 | **Bear knee-drive** | Da plank/bear, ginocchio che spinge avanti verso il petto | Core, flessori d'anca |
| 4 | **Spider-man mountain climber** | Da plank, ginocchio verso il gomito omolaterale (cross-body) | Obliqui, mobilità anca |
| 5 | **Kneeling lean-back** | In ginocchio, mani dietro la testa, busto che si inclina indietro | Quadricipiti, flessori d'anca (eccentrico) |

### ✅ Implementato come WOD 4 in BARE.html
Formato scelto: **circuito a tempo — 40" lavoro / 20" recupero, 3 giri** (~15 min).
Sequenza: side plank rotation → single-leg glute bridge → bear knee-drive →
spider-man climber → **dead bug**.

> Nota: il 5° movimento del reel (*kneeling lean-back*) è stato **sostituito con dead bug**.
> Il lean-back caricava i flessori d'anca in estensione → rischio iperlordosi, in conflitto
> con gli obiettivi anti-lordosi/pooch belly (vedi [`../POSTURA/scheda.md`](../POSTURA/scheda.md)).
> Dead bug è anti-estensione puro e rinforza quel lavoro.

Parametri regolabili in cima all'engine W4: `W4_ROUNDS`, `W4_WORK`, `W4_REST`.
Se preferisci reps invece del tempo, o giri diversi, si cambia lì.

---

## Reel 2 — NON RECUPERABILE

File: `Screen_Recording_20260915_090701_Instagram.mp4` · 34 MB.

**File corrotto**: la registrazione è stata interrotta prima della finalizzazione.
Contiene i dati video (`mdat`) ma manca l'atomo `moov` (metadati di decodifica:
risoluzione, SPS/PPS, indice frame). Senza `moov` né ffmpeg né QuickLook riescono
ad aprirlo, e i dati grezzi non sono decodificabili perché SPS/PPS vivevano nel `moov`.

**Opzioni per recuperarlo:**
1. **Ri-scaricalo/ri-registralo** dall'app Instagram (più semplice e affidabile).
2. **`untrunc`** — tool che ricostruisce il `moov` usando un file sano dello stesso
   dispositivo come riferimento (avremmo il Reel 1 perfetto come reference). Richiede
   build da sorgente (repo di terze parti su GitHub). Dimmi se vuoi che ci provi.
3. **Me lo descrivi tu** guardando il reel salvato altrove.
