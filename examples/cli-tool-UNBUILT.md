# Unbuilt

Things this project deliberately does **not** do, and why — so they are not
silently re-added later. Newest entries at the bottom.

> Example ledger for a small command-line tool. Copy the shape, not the contents.

## Config file — 2026-01-12
**Left unbuilt:** a config file (`.toolrc` / YAML).
**Why:** flags and environment variables cover every option; a config format is one more thing to parse, validate, and document.
**Revisit if:** users routinely pass the same long combinations of flags.

## Plugin / extension API — 2026-01-20
**Left unbuilt:** a third-party plugin system for user-defined commands.
**Why:** the built-in commands cover the known use cases, and a public API is a permanent compatibility commitment.
**Revisit if:** users ask to add their own commands and we see real, repeated demand.

## Windows support — 2026-02-01
**Left unbuilt:** native Windows builds and testing.
**Why:** the whole team and all current users are on macOS/Linux; the POSIX path and signal assumptions run deep.
**Revisit if:** a Windows user asks, or we want to widen distribution.

## Auto-update — 2026-02-09
**Left unbuilt:** a self-update mechanism baked into the binary.
**Why:** users install via Homebrew/npm, which already handle updates.
**Revisit if:** we start distributing standalone binaries outside a package manager.
