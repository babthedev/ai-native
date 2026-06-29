#!/bin/bash
set -e

echo "Validating ai-native files..."

ERRORS=0

# Validate all JSON files
echo "→ Checking JSON files..."
find . -name "*.json" -not -path "*/.git/*" | while read f; do
  python3 -m json.tool "$f" > /dev/null 2>&1 || { echo "  ✗ Invalid JSON: $f"; ERRORS=$((ERRORS+1)); }
done

# Check required fields in JSON envelopes
echo "→ Checking JSON envelope compliance..."
find . -name "*.json" -not -path "*/.git/*" -not -name "package*.json" | while read f; do
  if ! grep -q '"_meta"' "$f"; then
    echo "  ✗ Missing _meta: $f"
    ERRORS=$((ERRORS+1))
  fi
done

if [ $ERRORS -eq 0 ]; then
  echo ""
  echo "✅ All files valid"
else
  echo ""
  echo "✗ $ERRORS error(s) found"
  exit 1
fi
