#!/bin/bash
# SessionStart (start, resume, clear, compact): gives every session the lean-lanes rules.
# The rules live in lean-lanes.md beside this script, so they change without touching settings.
jq -n --rawfile t "$(dirname "$0")/lean-lanes.md" \
  '{hookSpecificOutput:{hookEventName:"SessionStart",additionalContext:$t}}'
