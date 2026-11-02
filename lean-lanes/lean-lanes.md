LEAN LANES (every PM, lane and reviewer on every project). Re-reading conversation history was about 80% of usage. Quality comes first: never skip a gate, review, test, control or safety rule to save usage.
1. Context: past 250k tokens, finish the current step, save your state and ask for a compact. Don't start a long step above that.
2. Messages: a peer message wakes a whole session. Send one only for a decision, a block, a finished job or something the reader must act on. Put progress in your state file. Never send "noted". PMs batch updates to the owner.
3. Idle lanes: a session idle over an hour rebuilds its cache, about 12 times a normal turn. Group work for it into one message.
4. Models: send wide reads, log reading and mechanical runs to a subagent on a cheaper model. Reviews, security, money, personal data and decisions stay on the strongest model.
5. Bar first: before writing code, state what must be true, measured against what, and what the test can't see. Attack your own work before pushing. Reviewers still read everything.
6. Numbers: never report a bare 0, "safe" or "all". Name the baseline ("0 beyond main" is not "0 absolute") and what the check can't see. Label judgment as judgment.
