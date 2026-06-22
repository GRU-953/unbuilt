#!/usr/bin/env bash
# Scripted reenactment of the `unbuilt` workflow, used to render demo/demo.gif via VHS.
# The commands and output shown mirror what the plugin actually produces.
set -u
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8  # so per-char typing handles multibyte glyphs

esc=$'\033'
BOLD="${esc}[1m"; DIM="${esc}[2m"; GRN="${esc}[32m"; YEL="${esc}[33m"
CYN="${esc}[36m"; MAG="${esc}[35m"; RST="${esc}[0m"

line(){ printf '%s\n' "$1"; }
type_line(){ # animate typing of $1 after prompt prefix $2
  local s="$1" prefix="$2" i
  printf '%s' "$prefix"
  for ((i=0; i<${#s}; i++)); do printf '%s' "${s:i:1}"; sleep 0.018; done
  printf '\n'
}

sleep 0.5
line "${DIM}# In the Claude Code chat box:${RST}"
sleep 0.3
type_line "/unbuilt:record no billing yet - free private beta; revisit at GA" "${CYN}❯ ${RST}"
sleep 0.6
line ""
line "${GRN}✓ Recorded in UNBUILT.md${RST}"
line "${DIM}  ## Billing system — 2026-06-22${RST}"
line "  ${BOLD}Left unbuilt:${RST} payment & subscription billing"
line "  ${BOLD}Why:${RST} free during private beta; not worth the complexity yet"
line "  ${BOLD}Revisit if:${RST} we reach general availability (GA)"
sleep 1.7
line ""
line "${MAG}      · · ·   three weeks later, brand-new session   · · ·${RST}"
line ""
sleep 1.1
type_line "add Stripe billing to the checkout flow" "${CYN}❯ ${RST}"
sleep 0.6
line ""
line "${YEL}⚠  unbuilt: that was cut on purpose${RST}"
line "${DIM}   Billing system — recorded 2026-06-22${RST}"
line "   ${BOLD}Why:${RST} free during private beta; not worth the complexity yet"
line "   ${BOLD}Revisit if:${RST} we reach GA"
sleep 0.9
line ""
line "   ${BOLD}Proceed anyway${RST} (override + log it)    ${BOLD}·${RST}    ${BOLD}Hold the line${RST}"
sleep 2.8
