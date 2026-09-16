# Design

Sistema visivo di **BARE** (`BARE.html`). Tutto inline in un unico file, mobile-first,
tema scuro, colore in `oklch`. Un colore-fase (`--phase`) cambia per WOD/stato e tinge
dial, accenti, pulsanti primari.

## Color

Tema scuro neutro con accenti per-WOD. Base:

| Token | Valore | Uso |
|---|---|---|
| `--bg` | `oklch(0.155 0.006 260)` | Sfondo |
| `--surface` | `oklch(0.205 0.008 260)` | Card, superfici |
| `--surface-2` | `oklch(0.255 0.009 260)` | Superfici sollevate, pulsanti neutri |
| `--line` | `oklch(0.30 0.010 260)` | Bordi |
| `--ink` | `oklch(0.975 0 0)` | Testo primario |
| `--muted` | `oklch(0.74 0.012 260)` | Testo secondario |
| `--faint` | `oklch(0.60 0.012 260)` | Testo terziario / azioni deboli |

Accenti (uno per WOD/stato, esposti via `--phase`):

| Token | Hue | WOD/stato |
|---|---|---|
| `--w1` | verde `156` | WOD 1 · Asciuga & Allinea |
| `--w2` | arancio-rosso `32` | WOD 2 · AMRAP |
| `--w3` | lavanda `295` | WOD 3 · Pre-Sonno |
| `--w4` | ciano `200` | WOD 4 · Functional |
| `--w6` | magenta `350` | WOD 6 · Core Engine |
| `--prep` | arancio `66` | Fase "Preparati" |
| `--rest` | blu `255` | Fase "Recupero" |

`--phase` è impostato per schermata (es. `#s-w4-ex{ --phase:var(--w4) }`) e guida
anello del dial, dot di fase, tag accento, pulsante primario, focus ring.

## Spacing

Scala 4pt in rem, da usare al posto di valori arbitrari:
`--sp-1 .25` · `--sp-2 .5` · `--sp-3 .75` · `--sp-4 1` · `--sp-5 1.5` · `--sp-6 2` · `--sp-8 3`.
Ritmo: gruppi correlati stretti (titolo→steps `--sp-3`), separazioni ampie tra gruppi
(auto-margin verso il dial, `--sp-4/5` prima dei controlli).

## Typography

Un'unica famiglia di sistema: `-apple-system, BlinkMacSystemFont, "SF Pro Text", "Segoe UI", Roboto`.
Gerarchia per peso (600–850) e dimensione, con `clamp()` sui titoli:
- Home h1 `clamp(1.9rem,8.5vw,2.6rem)` · ex-title `clamp(1.55rem,6.5vw,2.1rem)`
- `dial-num` `clamp(3.2rem,14vw,4.8rem)`, `tabular-nums`, letter-spacing `-.04em`
- Eyebrow/kicker: `.72–.78rem`, uppercase, tracking `.14–.16em`, colore `--phase` o `--muted`

## Motion

`--ease: cubic-bezier(0.22,1,0.36,1)` (ease-out). Transizioni 120–280ms. Anello dial
`stroke-dashoffset .95s linear`; pulse `.dial.ending` negli ultimi 3s; `fadeUp` all'entrata
di ogni schermata; toast slide+fade. **Da aggiungere:** blocco `prefers-reduced-motion`.

## Components

- **Dial** (`.dial-wrap` → `.dial` + `.dose`): anello SVG (`stroke-dasharray`/`offset`),
  **numero centrato** nell'anello, **label sotto** il cerchio. Glow radiale via `::before`.
- **Controls** (`.controls`): flex-wrap, `column-gap --sp-2` / `row-gap --sp-3`, pinnati in
  basso (`margin-top:auto`). Pulsanti: `.btn`, `.btn-primary` (fondo `--phase`), `.btn-ghost`
  (icona), `.btn-block` (flex:1). `.btn-share` primario a tutta larghezza in fondo alle
  schermate finali; `.giveup-btn` azione terziaria (link sottolineato, `--faint`).
- **Wod-card** (`.wod-card`): superficie con `--c` per-WOD, numero, nome, sub, tag, freccia.
- **Circuit pill** (`.c-pill`): stato AMRAP per esercizio, `on`/`done`, progresso `X / target`.
- **Stat** (`.stat` in `.stat-row`): numero grande `--phase` + label, dati reali di sessione.
- **Toast** (`.toast`): conferma effimera (fallback copia condivisione).
- **s-head / steps**: intestazione fase+contatore; lista passi numerata.

## Layout

Ogni schermata è `position:fixed; inset:0`, flex column, `100dvh`, con safe-area iOS
(`env(safe-area-inset-*)`). Contenuto centrato a `max-width:34rem` (`32rem` per testo).
Pulsanti fissi in alto (`.g-btn` back/music). Il dial-wrap si auto-centra
(`margin:auto`), i controlli restano ancorati in basso.
