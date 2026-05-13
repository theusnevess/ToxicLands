# ToxicLands — Commit Conventions

# Purpose

Maintain:
- readable history;
- clean integration;
- organized workflow.

---

# General Rules

Commits must:
- be small;
- be focused;
- represent one logical change.

Avoid:
- giant commits;
- mixed-purpose commits;
- vague messages.

---

# Commit Structure

type(scope): message

Examples:
- feat(player): add basic movement
- chore(gamemaker): add rm_test
- docs(lore): update MOTHER section
- fix(camera): prevent jitter

---

# Allowed Types

## feat
New feature

## fix
Bug fix

## chore
Infrastructure/setup

## docs
Documentation

## refactor
Code restructuring without feature changes

## test
Validation/test-related changes

---

# Scope Examples

- player
- camera
- environment
- lore
- codex
- gamemaker
- ui
- audio

---

# Good Commit Examples

- feat(player): add WASD movement
- chore(codex): add GameMaker skill
- docs(art): define Saimon palette

---

# Bad Commit Examples

- update stuff
- fixes
- random changes
- big update

---

# Commit Frequency

Commit:
- after validated tasks;
- after stable slices;
- after meaningful milestones.

Avoid committing broken states.

---

# Pre-Commit Checklist

Before committing:
- validate task scope;
- test implementation;
- check unrelated file changes;
- verify project opens correctly.

---

# Forbidden Behaviors

Never:
- commit broken builds;
- commit experimental unfinished systems;
- commit unrelated changes together.