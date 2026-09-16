# BARE

App di allenamento personale a corpo libero. Un unico file HTML autoconsistente,
niente dipendenze, niente rete: gira offline in qualsiasi browser e si installa sul
telefono con "Aggiungi a Home".

**Live:** https://bare-wod.pages.dev/

## Il nome

**BARE** ha un doppio significato, uno per l'allenamento e uno per il codice:

- **A corpo libero / a mani nude** — *bare hands*, *bare feet*. Nessun attrezzo,
  solo il peso del corpo. È l'essenza della calistenia.
- **Essenziale, spoglio** — l'app è un solo file, *bare-bones*: zero dipendenze, zero
  build, zero framework. Solo HTML, CSS e JavaScript in un unico documento.

Corpo essenziale, codice essenziale.

## I WOD

| WOD | Nome | Durata | Focus |
|---|---|---|---|
| **1** | Asciuga & Allinea | ≈ 35 min | Core, upper body sulle parallele, mobilità. Low-impact. |
| **2** | 100 · 200 · 300 | 20 min | AMRAP: 5 push-up → 10 kick-out → 15 squat, ripeti. |
| **3** | Pre-Sonno | 10 min | Routine notturna a letto: decompressione lombare, respiro, stretch. |
| **4** | Functional | ≈ 15 min | Circuito a tempo (40″/20″ × 3 giri): side plank, glute bridge, bear, spider-man, dead bug. |

Un filo conduttore dei WOD è la correzione dell'**iperlordosi / anteroversione del
bacino** (glutei attivi, core anti-estensione): vedi [`POSTURA/`](POSTURA/).

## Struttura del repo

```
BARE.html          — l'app (home + WOD 1–4, single file, no deps)
WOD_1..4/          — scheda.md di ogni WOD (spec autorevole) + materiali sorgente
WOD_5/             — candidati per il prossimo WOD (Tabata, Death by Burpees, ...)
POSTURA/           — riferimento posturale anti-lordosi (non un WOD a tempo)
NEWS/              — reel Instagram salvati come spunto per nuovi WOD
wrangler.toml      — config deploy Cloudflare Pages
deploy.sh          — deploy on-demand
CLAUDE.md          — guida per Claude Code (architettura, comandi, deploy)
```

## Tecnologia

Tutto inline in `BARE.html`, senza file esterni:

- **Timer a dial** — anello SVG animato (stroke-dashoffset).
- **Musica generativa** — Web Audio API, un loop diverso per WOD. Nessun MP3.
- **Voce** — SpeechSynthesis, poliglotta (nomi inglesi in `en-US`, resto in `it-IT`).
- **Schermo sempre acceso** — Wake Lock API (richiede HTTPS, da qui il deploy su Pages).
- **Haptics** — `navigator.vibrate` ai cambi di fase.
- Colori in `oklch()`, layout mobile-first con safe-area iOS e `100dvh`.

## Deploy

Pubblicazione on-demand su Cloudflare Pages (progetto `bare-wod`):

```bash
./deploy.sh
```

Copia `BARE.html` in `dist/index.html` e lo carica su Pages (solo l'app — niente
video/screenshot). Richiede `CLOUDFLARE_API_TOKEN` (permesso *Pages: Edit*) in
`.dev.vars`. Dettagli in [`CLAUDE.md`](CLAUDE.md).

## Sviluppo & test

Nessun build, nessun server: apri `BARE.html` nel browser. Verifiche rapide:

```bash
node --check <script-estratto>.js   # sintassi
node -e '<eval dei dati workout>'   # integrità dati
```
