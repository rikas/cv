#!/usr/bin/env bash
set -euo pipefail

# Generates a PDF from index.html using headless Chrome.
# Usage: ./generate-pdf.sh [output-file]

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT="${1:-$SCRIPT_DIR/Ricardo_Otero_CV.pdf}"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -x "$CHROME" ]; then
  echo "Error: Google Chrome not found at $CHROME" >&2
  exit 1
fi

"$CHROME" --headless --disable-gpu \
  --print-to-pdf="$OUTPUT" \
  --no-pdf-header-footer \
  "file://$SCRIPT_DIR/index.html"

echo "PDF generated at $OUTPUT"
