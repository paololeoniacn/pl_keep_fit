# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A personal workout app for Paolo. Each WOD (Workout Of the Day) lives in its own folder and is a **single self-contained `.html` file** — no build step, no dependencies, no network required. The file runs offline in any browser.

## Repo layout

```
BARE.html              — main app (home + WOD 1/2/3, single file, no deps)
WOD_1/
  scheda.md              — workout plan source (Italian) — authoritative spec
  CLSTNCS.html           — functional baseline (legacy)
  CLSTNCS-impeccable.html — polished standalone WOD-1-only version
WOD_2/
  *.jpg                  — reference screenshots (exercise form, LeoMoves reels)
WOD_3/
  scheda.md              — pre-sonno routine spec
```

New workouts → new `WOD_N/` folder following the same pattern.

## Architecture of each `.html` app

**One file = HTML + CSS + JS.** No external files, no CDN, no imports. Everything is inline.

Key sections inside `<script>`:

| Section | Role |
|---|---|
| `workoutData` array | Sequence of `{type:'ex', …}` and `{type:'rest', time}` items. `type:'ex'` items carry `name`, `steps[]` (imperative how-to), `dose`, `time` (seconds), optional `ref` and `cue`. |
| State vars | `currentIndex`, `timer`, `timeLeft`, `isPaused` |
| `startPreread(item)` | 10 s "Preparati" screen; increments `currentIndex` |
| `startExercise(item)` | Active timer screen |
| `startRest(item)` | Recovery screen; increments `currentIndex` |
| `nextStep()` | Dispatches to preread/rest/end based on `workoutData[currentIndex]` |
| `Music` IIFE | Web Audio API generative loop (124 BPM, Am–F–C–G). `Music.start()`, `.stop()`, `.fadeOut()`, `.duck(factor)`, `.toggle()`. Requires a user-gesture before calling `.start()`. |

**`currentIndex` invariant**: incremented *inside* `startPreread` and `startRest` (not by the caller). When inside an active exercise, `currentIndex` already points to the *next* step — which is why skip/restart adjust it by `±1`.

**Screens**: `#screen-start`, `#screen-preread`, `#screen-exercise`, `#screen-rest`, `#screen-end`. Only one has class `active` at a time via `showScreen(id)`.

## Working on a new WOD

1. Copy the previous WOD's `CLSTNCS-impeccable.html` as the template.
2. Read the matching `scheda.md` to pull exercise names, step-by-step cues, and doses into the `EX` object at the top of `<script>`.
3. Rebuild `workoutData` with `ex()` and `rest()` helper calls.
4. Validate data: `node -e` extracting the `<script>` block and checking all `EX` keys resolve, counts, and field completeness (see session history for the check script pattern).

## Audio/voice notes

- Voice (`speechSynthesis`) ducks music via `u.onstart`/`u.onend` hooks on the `SpeechSynthesisUtterance`.
- Music mute preference stored in `localStorage` key `clstncs-music` (`'on'`/`'off'`).
- `Music.start()` must be called inside a click handler (browser autoplay policy).

## Testing

No test suite. Verify with:
```bash
node --check <extracted-script>.js   # syntax
node -e '<eval workout data>'        # data integrity (all keys resolve, 0 bad items)
```
Open the HTML directly in a browser (VSCode internal browser works). No server needed.

## Deploy (Cloudflare Pages, on-demand)

The app is published to Cloudflare Pages (project `bare`) for a real HTTPS URL —
required for the screen wake-lock, and for "Add to Home Screen" on the phone.

- **Command**: `./deploy.sh` — copies `BARE.html` → `dist/index.html` and runs
  `wrangler pages deploy dist --project-name bare-wod`. Only the app is uploaded (no
  videos/md/screenshots — Pages has a 25 MB/file limit and `NEWS/` holds large videos).
- **Config**: `wrangler.toml` (`name = "bare-wod"`, `pages_build_output_dir = "dist"`).
  Live URL: `https://bare-wod.pages.dev/`. The version badge in the footer is
  `APP_VERSION` in the `<script>` (bump it each release).
- **Auth**: `CLOUDFLARE_API_TOKEN` (permesso *Pages: Edit*) in `.dev.vars` (gitignored),
  caricato automaticamente da `deploy.sh`.
- `dist/` is a build artifact (gitignored, regenerated each deploy).

## Autonomia (vale solo per questo progetto)

Hai ampia libertà operativa qui: modifica i file, esegui `./deploy.sh`, lancia script di
build/screenshot, fai `git commit`, ricarica e verifica — **senza chiedere conferma ogni
volta**. Deploy e commit in autonomia sono attesi e graditi; itera liberamente.

Due limiti restano:
- **Protocollo Cerniera** (vedi CLAUDE.md globale): se in root esiste `.protocolloCerniera`,
  il freno globale ha la precedenza — niente deploy, push o scritture esterne finché c'è.
- `git push` e operazioni git distruttive non richieste (force-push, `reset --hard`,
  riscrittura history): chiedile prima, salvo istruzione esplicita del momento.
