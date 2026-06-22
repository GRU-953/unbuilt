---
name: Check the unbuilt ledger
description: >-
  Use BEFORE adding a new feature, expanding scope, adding a dependency,
  re-introducing something that was previously removed, or reversing a "keep it
  simple" decision. Reads the project's UNBUILT.md and warns if the planned
  change conflicts with something that was deliberately left unbuilt, so
  deliberate decisions are not reversed by accident. Also runs on request to
  audit a plan against the ledger.
disallowed-tools: "Write Edit"
---

# Check the "unbuilt" ledger

Before scope grows, make sure you are not about to undo a deliberate decision.

## Steps

1. **Find the ledger.** Look for `UNBUILT.md` in the project root.
   - If it does not exist or is empty, there are no recorded boundaries. Say so
     in one short line and continue with the task. Do not nag.

2. **Read it** and compare the change you are about to make against each
   **Left unbuilt** entry. Match on the *intent or capability* described, not
   just shared words — a plan to "add Redis for response storage" conflicts
   with an entry that ruled out "a caching layer." When you are genuinely
   unsure whether something matches, surface it briefly and let the user
   decide rather than staying silent.

3. **If the planned change matches or closely relates to a recorded entry**,
   pause before proceeding and tell the user plainly:
   - what was deliberately left unbuilt, the reason, and the date; and
   - that the current plan would reverse it.

   Then ask whether to:
   - **proceed anyway** — a deliberate override; offer to record the reversal
     with the companion record skill so the ledger stays honest; or
   - **hold off** and keep the original boundary.

   Do not silently cross a recorded boundary.

4. **If there is no conflict**, continue with the task. Only mention the check
   if it is relevant — don't add noise.

## Rules

- Read-only: this skill never changes `UNBUILT.md` (recording is the other
  skill's job).
- Inform and confirm — don't hard-block, and don't ignore. The user decides.
