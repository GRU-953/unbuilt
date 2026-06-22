---
name: Record an unbuilt decision
description: >-
  Use when you or the user deliberately decide NOT to build something, cut a
  feature to keep things simple, rule out an approach, drop a dependency, or set
  a scope boundary — phrases like "we're not doing X", "leave that out", "keep
  it simple here", "that's out of scope", or "YAGNI". Records the decision and
  its reasoning in the project's UNBUILT.md so it is not silently reversed or
  re-litigated later. Trigger this right after such a decision is made.
argument-hint: "[what you're choosing not to build, and why]"
---

# Record an "unbuilt" decision

You are adding one entry to the project's deliberate-omissions ledger,
`UNBUILT.md`, at the root of the current project. This is the record of things
the project chose **not** to build, and why — the mirror image of a decision
record.

## Steps

1. **Work out the entry.**
   - If arguments were given, use them as the substance: `$ARGUMENTS`
   - Otherwise, summarise the decision that was just made in the conversation.
   - You need three things. Ask the user only for what is genuinely missing:
     - **Left unbuilt** — what is being deliberately not built, or the boundary.
     - **Why** — the one-line reason.
     - **Revisit if** — the condition that would reopen it (use "—" if none).

2. **Read the existing ledger.** Look for `UNBUILT.md` in the project root.
   - If it exists, read its full current contents first.
   - If it does not exist, create it with the header shown below.

3. **Append the new entry — never overwrite.**
   - Add your entry to the *end* of the file using an edit that inserts after
     the existing content (the Edit tool). Do not reconstruct the whole file
     from memory and write it back — that is how entries get dropped. If the
     file is too large to read in full, still only append; never rewrite it.
   - Preserve every existing entry exactly as-is: do not reorder, edit, or
     remove anything already there. If the file exists but has no header or
     looks malformed, still only append — never "repair" or rewrite existing
     content.
   - Title the entry with a short noun phrase and today's date (`YYYY-MM-DD`).

   Entry format:

   ```
   ## <short title> — <YYYY-MM-DD>
   **Left unbuilt:** <what is deliberately not being built, or the boundary>
   **Why:** <one-line reason>
   **Revisit if:** <condition that would reopen this, or "—">
   ```

   If you are creating the file, start it with this header, then the first entry:

   ```
   # Unbuilt

   Things this project deliberately does **not** do, and why — so they are not
   silently re-added later. Newest entries at the bottom.
   ```

4. **Confirm.** Tell the user, in one line, what you recorded. If the write
   fails (for example, a read-only folder), say clearly that the entry was
   *not* saved.

## Rules

- If you cannot safely preserve the current contents, stop and say so rather
  than risk losing entries.
- Keep entries short — one decision per entry.
- Write only to `UNBUILT.md` at the project root (the top of the current
  working tree). Touch nothing else.
