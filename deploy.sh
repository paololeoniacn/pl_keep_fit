#!/usr/bin/env bash
# Deploy on-demand di BARE.html su Cloudflare Pages (progetto "bare").
# Solo l'app viene pubblicata: BARE.html -> dist/index.html. Niente video/md/screenshot.
# Uso: ./deploy.sh   (richiede auth: `npx wrangler login` una tantum, oppure CLOUDFLARE_API_TOKEN con permesso Pages:Edit)
set -euo pipefail
cd "$(dirname "$0")"

# Carica le credenziali di deploy (CLOUDFLARE_API_TOKEN) da .dev.vars, se presente
if [ -f .dev.vars ]; then set -a; . ./.dev.vars; set +a; fi
if [ -z "${CLOUDFLARE_API_TOKEN:-}" ]; then
  echo "✘ CLOUDFLARE_API_TOKEN mancante. Mettilo in .dev.vars (permesso Pages:Edit)." >&2
  exit 1
fi

rm -rf dist
mkdir -p dist
cp BARE.html dist/index.html

echo "→ Deploy di dist/ (index.html) su Cloudflare Pages…"
# Progetto "bare-wod" già creato. Prima volta su una macchina nuova:
#   npx wrangler@latest pages project create bare-wod --production-branch main --force
npx --yes wrangler@latest pages deploy dist --project-name bare-wod --branch main --commit-dirty=true
