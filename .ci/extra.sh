#!/usr/bin/env bash
# Repo-specific checks for wg28-wds-followup (run by .github/scripts/validate.py)
set -euo pipefail

test -s index.html || { echo "index.html is missing or empty"; exit 1; }
grep -qi "<title>" index.html || { echo "index.html has no <title>"; exit 1; }

echo "review page present and titled"
