# unbuilt

**A ledger of what you deliberately chose *not* to build — so your AI coding assistant stops re-adding cut features and re-proposing ruled-out approaches.**

When you work with an AI coding assistant over more than one sitting, it has no
memory of your *restraint*. You delete a half-built feature to keep things
simple — a week later it helpfully adds it back. You rule out an approach for
good reasons — it suggests the same thing again. You say "let's keep this part
dumb on purpose" — it "improves" it.

The decisions to **not** do things are the first to evaporate, and
re-litigating them is a constant, invisible tax.

`unbuilt` gives those decisions a home: one plain file in your project that
records what you left out and why, and a skill that makes the assistant check it
before it adds scope or reverses a choice.

It is the mirror image of a decision record. Decision records log what you
*did* decide; `unbuilt` logs what you deliberately *didn't*.

---

## What it does

`unbuilt` is three small, plain-text pieces — no code to compile and no
dependencies. (A *skill* here just means an instruction set Claude Code follows
automatically when it's relevant.)

1. **`UNBUILT.md`** — one human-readable file in your project. Each entry looks
   like this:

   ```
   ## Caching layer for the API — 2026-06-22
   **Left unbuilt:** in-memory response caching.
   **Why:** traffic is tiny; it adds complexity we don't need yet.
   **Revisit if:** sustained traffic makes responses feel slow.
   ```

2. **A "record" skill** — when you (or the assistant) decide to cut something,
   it adds a clean entry to that file. Trigger it yourself with
   `/unbuilt:record`, or let the assistant log its own deliberate omissions as
   it works.

3. **A "check" skill** — before the assistant adds scope, re-adds a feature, or
   reverses a "keep it simple" call, it reads `UNBUILT.md` first and pauses to
   flag *"this was cut on purpose on [date] because [reason] — confirm you
   really want to override."*

---

## Install

A *plugin* adds new abilities to Claude Code. To install this one, open the
**Claude Code chat box** (where you normally type messages to Claude) and enter
these two lines, one at a time. The leading `/` tells Claude Code it's a
command, not a message.

```
/plugin marketplace add GRU-953/unbuilt
/plugin install unbuilt@unbuilt
```

Copy both lines exactly as written — `unbuilt@unbuilt` is correct: it means
"install the **unbuilt** plugin from the **unbuilt** marketplace," which is why
the word appears on both sides of the `@`.

You only do this once. To confirm it worked, type `/unbuilt:` and you should see
the `record` and `check` commands offered.

---

## How to use it

**Record something you're deliberately not building:**

```
/unbuilt:record we're not adding user accounts yet — single-user tool for now; revisit if we get a second user
```

Type it in plain English — there's no special format to memorise; the assistant
sorts what you say into a tidy entry in `UNBUILT.md`. If the file doesn't exist,
it creates it.

You don't have to use the command — if you simply tell the assistant "let's not
build X, keep it simple," it can record that for you on its own.

**Stay on the rails automatically:**

Later, if the assistant is about to add user accounts (or anything else you've
recorded), the check skill notices, reads `UNBUILT.md`, and stops to say the
decision was deliberate — so you can confirm an override or hold the line.
Nothing is hidden, and nothing is blocked without your say-so.

---

## The `UNBUILT.md` format

Plain markdown. Newest entries at the bottom. Each entry has four parts:

```
## <short title> — <YYYY-MM-DD>
**Left unbuilt:** <what you're deliberately not building, or the boundary>
**Why:** <one-line reason>
**Revisit if:** <the condition that would reopen it, or "—">
```

Because it's just a file in your project, it travels with your project's history
and shows up in code review like any other change.

---

## How it relates to decision records (ADRs)

Decision records and AI-agent "memory" tools already exist. Almost all of them
capture what you **decided to do**. `unbuilt` is
deliberately the opposite, and only that: a low-ceremony, single-file record of
what you **decided not to do**. Use it alongside those tools, not instead of
them.

## What it deliberately doesn't do

`unbuilt` practises what it preaches. See [`UNBUILT.md`](UNBUILT.md) for the
real list of features left out of this plugin on purpose — no session hooks, no
database, no scripts, just one markdown file.

---

## License

MIT — see [`LICENSE`](LICENSE).
