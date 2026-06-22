# Unbuilt

Things this project deliberately does **not** do, and why — so they are not
silently re-added later. Newest entries at the bottom.

This file is also a working example of what `unbuilt` produces. These are the
real boundaries set while building the plugin itself.

## No automatic session-start hook — 2026-06-22
**Left unbuilt:** a hook that injects the ledger into context at the start of every session.
**Why:** it adds install and configuration friction for non-technical users; the check skill activating itself when scope grows is lighter and good enough.
**Revisit if:** users report the check skill misses important moments and ask for always-on enforcement.

## No separate "list" command — 2026-06-22
**Left unbuilt:** an `/unbuilt:list` command to print the ledger.
**Why:** `UNBUILT.md` is a plain file at the project root — you just open it.
**Revisit if:** the ledger grows large enough that people want filtering or search.

## No database, search index, or MCP server — 2026-06-22
**Left unbuilt:** any storage backend beyond a single markdown file.
**Why:** one human-readable file in the repo meets the real need and stays diff-able and reviewable in version control.
**Revisit if:** a single file stops scaling for a real user's workflow.

## No executable scripts or shell calls — 2026-06-22
**Left unbuilt:** any bundled script, binary, or shell command (including auto-stamping the date via the shell).
**Why:** keeping the plugin pure instructions makes it cross-platform, dependency-free, and removes the largest correctness and security surface.
**Revisit if:** a feature genuinely cannot work without it — and only after exhausting the pure-instruction approach.
