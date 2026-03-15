#!/bin/bash

echo "=== QUICK DEBUG ==="
echo "Current directory: $(pwd)"
echo ""

echo "=== LOOKING FOR PISTON ==="
ls -la / | grep -i piston
echo ""

echo "=== LOOKING FOR COMMON PATHS ==="
for dir in "/piston" "/app" "/usr/src/app" "/opt/piston"; do
  if [ -d "$dir" ]; then
    echo "✓ Found: $dir"
    ls -la "$dir" | head -5
  fi
done
echo ""

echo "=== LOOKING FOR CLI ==="
find / -name "cli" -type d 2>/dev/null | head -5
echo ""

echo "=== LOOKING FOR index.js ==="
find / -name "index.js" 2>/dev/null | head -5
echo ""

echo "=== DEBUG DONE - CRASHING NOW ==="
exit 1
