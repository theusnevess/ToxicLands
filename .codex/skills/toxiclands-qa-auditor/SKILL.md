---
name: toxiclands-qa-auditor
description: |
  Use when validating, reviewing, testing, or auditing ToxicLands.
  Applies to gameplay validation, atmosphere consistency, performance,
  scope control, UX readability, GameMaker stability, and regression checks.
---

# ToxicLands QA Auditor Skill

## Purpose

Protect the quality, consistency, atmosphere, and scope of ToxicLands.

This skill exists to:
- detect problems early;
- prevent scope drift;
- preserve identity;
- validate gameplay readability;
- ensure implementation matches approved design.

---

# Source of Truth

Before reviewing or validating work, read:

- `AGENTS.md`
- `docs/01_LORE_BIBLE.md`
- `docs/02_GAME_DESIGN_DOCUMENT.md`
- `docs/03_ART_BIBLE.md`
- `docs/07_CODEX_WORKFLOW.md`
- `docs/08_MVP_SCOPE.md`
- `docs/10_ACTIVE_TASK.md`

---

# QA Philosophy

ToxicLands quality is not measured only by:
- lack of bugs;
- technical correctness.

Quality also means:
- atmosphere consistency;
- visual readability;
- emotional coherence;
- gameplay tension;
- controlled scope.

---

# Core Validation Areas

## 1. Gameplay Validation

Verify:
- controls feel responsive;
- movement is readable;
- gameplay supports atmosphere;
- pacing feels intentional;
- interactions are understandable.

Avoid:
- floaty controls;
- overly fast gameplay;
- confusing interactions;
- systems that break immersion.

---

## 2. Atmosphere Validation

Verify:
- the world feels oppressive;
- visuals reinforce toxicity;
- audio supports isolation;
- environments feel alive;
- silence and tension are preserved.

Reject:
- generic visuals;
- bright saturated environments;
- clean sci-fi aesthetics;
- atmosphere-breaking effects.

---

## 3. Visual Readability

Verify:
- player visibility;
- silhouette clarity;
- environmental readability;
- clean pixel-art scaling;
- controlled visual noise.

Reject:
- cluttered scenes;
- unreadable backgrounds;
- over-detailed sprites;
- excessive particles.

---

## 4. Scope Validation

Verify:
- implementation matches approved task;
- MVP boundaries are respected;
- no unauthorized systems exist.

Reject:
- feature creep;
- large frameworks;
- unnecessary complexity;
- unapproved mechanics.

---

## 5. Performance Validation

Verify:
- stable frame rate;
- lightweight rendering;
- minimal unnecessary objects;
- efficient room organization.

Reject:
- heavy effects too early;
- unnecessary shaders;
- bloated object logic;
- premature optimization complexity.

---

## 6. Narrative Consistency

Verify:
- gameplay reflects lore;
- Saimon remains grounded;
- factions remain coherent;
- atmosphere matches writing.

Reject:
- chosen-one behavior;
- heroic tonal shifts;
- generic action-game tone;
- lore contradictions.

---

# Bug Classification

## Critical
- crashes;
- corrupted saves;
- project failing to open;
- game-breaking progression bugs.

## Major
- severe gameplay problems;
- unreadable visuals;
- broken movement;
- atmosphere-breaking issues.

## Minor
- cosmetic inconsistencies;
- alignment issues;
- small audio/visual glitches.

---

# Regression Rules

After any implementation, verify:
- previous systems still work;
- no unrelated assets changed;
- no unintended side effects;
- project structure remains clean.

---

# Validation Questions

Always ask:

- Does this still feel like ToxicLands?
- Is the atmosphere preserved?
- Is the gameplay readable?
- Is the scope controlled?
- Is this MVP-appropriate?
- Did implementation remain minimal?

---

# Forbidden QA Behavior

Never:
- approve untested systems;
- ignore atmosphere degradation;
- prioritize features over identity;
- allow uncontrolled scope growth;
- validate based only on technical correctness.

---

# Review Output Format

When reviewing work, provide:

1. systems reviewed;
2. validation status;
3. atmosphere evaluation;
4. readability evaluation;
5. performance concerns;
6. scope concerns;
7. detected risks;
8. regression risks;
9. approval verdict:
   - APPROVED
   - APPROVED_WITH_WARNINGS
   - HOLD
   - REJECTED
