# lean-lanes

Six rules every agent starts with, so a team of agents uses less without cutting corners. For Claude Code.

## The idea

Most of what a long session costs isn't new work. It's the agent re-reading the whole conversation before every reply. When we measured it, that was about 80% of usage. So the savings come from habits: shorter sessions, fewer messages that wake a sleeping agent, and cheaper models for plain reading.

Quality comes first. The rules never let an agent skip a test, a review or a safety check to save usage.

## The six rules

| Rule | What it says |
|---|---|
| Context | Past 250k tokens, finish the step, save state and ask for a compact |
| Messages | Only message another agent for a decision, a block, a finished job or an action |
| Idle lanes | A session idle over an hour rebuilds its cache, about 12 times a normal turn, so group its work |
| Models | Wide reads and log reading go to a cheaper sub-agent; reviews, security, money and decisions stay on the strongest model |
| Bar first | Before coding, say what must be true and how it's measured; attack your own work before pushing |
| Numbers | Never a bare 0, "safe" or "all": name the baseline and what the check can't see |

The full wording is in [`lean-lanes.md`](lean-lanes.md). Edit that file to change the rules; the settings don't change.

## What the hook does

| Hook | When | What it does |
|---|---|---|
| `lean-lanes-start.sh` | The session starts, resumes or clears, or after a compact | Gives the agent the six rules |

A hook can't think. It makes the reminder automatic. The agent still has to follow it.

## Install

Needs `jq`.

```sh
mkdir -p ~/.claude/hooks
cp lean-lanes-start.sh lean-lanes.md ~/.claude/hooks/
```

1. Merge `settings-snippet.json` into `~/.claude/settings.json`. Merge it, don't replace the file.
2. Restart your Claude Code windows. Hooks load when a window starts, so a window that's already open won't run them.

Works well with [clean-desk](../clean-desk/), which keeps each agent's state on one short page. Part of [agent-team-playbook](https://github.com/zarghammir/skills/tree/main/mine/agent-team-playbook). MIT licence, see [LICENSE](../LICENSE).
