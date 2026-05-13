---
name: toxiclands-gamemaker-gml
description: |
  Use when implementing, reviewing, or modifying GameMaker/GML code for ToxicLands.
  Applies to objects, rooms, scripts, sprites, collision, input, camera, HUD, state machines,
  and GameMaker project structure.
---

# ToxicLands GameMaker/GML Skill

## Purpose

Implement ToxicLands in GameMaker using clean, minimal, readable GML.

This skill must preserve:
- GameMaker architecture;
- MVP scope;
- performance;
- readability;
- pixel-art clarity;
- project organization.

---

# Engine

Official engine:

- GameMaker
- GML

Never:
- migrate to another engine;
- suggest Godot/Unity/Unreal implementation;
- introduce external frameworks without approval.

---

# Source of Truth

Before implementing, read:

- `AGENTS.md`
- `docs/07_CODEX_WORKFLOW.md`
- `docs/08_MVP_SCOPE.md`
- `docs/10_ACTIVE_TASK.md`

When gameplay or visual context matters, also read:

- `docs/02_GAME_DESIGN_DOCUMENT.md`
- `docs/03_ART_BIBLE.md`

---

# Implementation Rules

Always:
- implement the smallest approved task;
- keep code simple;
- prefer explicit readable logic;
- avoid premature abstractions;
- preserve naming consistency;
- avoid hidden side effects;
- summarize changed files after work.

Never:
- add unapproved systems;
- create large managers too early;
- add combat unless approved;
- add inventory unless approved;
- add procedural generation;
- add multiplayer;
- rewrite unrelated GameMaker resources.

---

# Naming Conventions

Use these prefixes:

- `obj_` for objects
- `spr_` for sprites
- `rm_` for rooms
- `scr_` for scripts/functions
- `snd_` for sounds
- `fnt_` for fonts
- `tls_` for tilesets

Examples:

- `obj_saimon`
- `spr_saimon_placeholder`
- `rm_test`
- `scr_player_movement`

---

# Object Rules

GameMaker objects should:
- have a clear responsibility;
- avoid becoming giant all-purpose objects;
- keep Step logic readable;
- avoid duplicated logic when a small script/function is justified.

For early MVP, prefer simple object-local code over complex architecture.

---

# Player Rules

Saimon must remain:
- ordinary;
- vulnerable;
- readable;
- grounded.

Never implement:
- superpowers;
- chosen-one mechanics;
- flashy magical abilities;
- exaggerated combat systems.

Movement should feel:
- controlled;
- slightly heavy;
- readable;
- suitable for atmospheric exploration.

---

# Camera Rules

Camera must preserve pixel-art clarity.

Avoid unless explicitly approved:
- excessive smoothing;
- screen shake;
- dynamic zoom;
- cinematic camera systems;
- shader-based effects.

---

# Collision Rules

Use simple collisions first.

Prefer:
- readable masks;
- predictable movement;
- stable collision behavior.

Avoid:
- physics complexity;
- fragile collision hacks;
- large collision systems before needed.

---

# Room Rules

Rooms should be built incrementally.

Early approved rooms:
- `rm_test`
- later: `rm_vila_dos_filtrados`
- later: `rm_campo_toxico`

Do not create multiple rooms unless the active task explicitly approves it.

---

# Script Rules

Only create scripts/functions when they reduce duplication or clarify behavior.

Do not create a large framework before the MVP requires it.

---

# Validation Checklist

After every implementation, verify:

- project opens in GameMaker;
- no unrelated files changed;
- task scope was respected;
- naming conventions were followed;
- code remains readable;
- no unapproved systems were added.

---

# Response Format After Work

When finished, summarize:

1. changed files;
2. what was implemented;
3. what was intentionally not implemented;
4. how to validate in GameMaker;
5. any risks or manual checks needed.