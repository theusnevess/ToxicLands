---
name: toxiclands-asset-pipeline
description: |
  Use when organizing, creating, importing, reviewing, or validating assets for ToxicLands.
  Applies to spritesheets, tilesets, animations, backgrounds, audio assets,
  naming conventions, folder organization, and GameMaker asset workflow.
---

# ToxicLands Asset Pipeline Skill

## Purpose

Maintain a clean, scalable, readable, and performant asset pipeline for ToxicLands.

The pipeline must prioritize:
- readability;
- consistency;
- low-detail visuals;
- fast iteration;
- easy maintenance;
- GameMaker compatibility.

---

# Source of Truth

Before asset work, read:

- `AGENTS.md`
- `docs/03_ART_BIBLE.md`
- `docs/04_ASSET_PIPELINE.md`
- `docs/08_MVP_SCOPE.md`
- `docs/10_ACTIVE_TASK.md`

---

# Asset Philosophy

Assets exist to support:
- atmosphere;
- gameplay readability;
- performance;
- visual consistency.

Assets should NOT:
- become overly detailed;
- increase scope unnecessarily;
- create visual noise.

---

# Folder Structure

Use this structure:

assets/
  sprites/
  tilesets/
  backgrounds/
  ui/
  audio/
  vfx/
  concepts/

Do not create random folders.

---

# Naming Convention

Use strict naming conventions.

## Sprites

- `spr_saimon_idle`
- `spr_saimon_walk`
- `spr_mutant_plant_idle`

## Objects

- `obj_saimon`
- `obj_mutant_plant`

## Rooms

- `rm_test`
- `rm_vila_dos_filtrados`

## Sounds

- `snd_rain_loop`
- `snd_filter_breath`

## Tilesets

- `tls_toxic_ground`

## Fonts

- `fnt_main_small`

---

# Sprite Rules

Sprites must:
- remain low-detail;
- prioritize silhouette;
- use limited palettes;
- remain readable during movement;
- avoid unnecessary animation frames.

Avoid:
- excessive dithering;
- noisy textures;
- visual clutter;
- overanimation.

---

# Sprite Size Rules

Recommended sizes:

## Characters
- 32x32
- 48x48

## Bosses
- 96x96
- 128x128

## Tiles
- 16x16
- 32x32

Avoid unnecessarily large sprites.

---

# Animation Rules

Animations should:
- be readable;
- preserve atmosphere;
- use few frames;
- feel grounded and heavy.

Avoid:
- exaggerated motion;
- flashy animation;
- hyper-fluid cartoon movement.

---

# Background Rules

Backgrounds must:
- reinforce atmosphere;
- preserve readability;
- avoid visual overload;
- support exploration.

Use:
- mud;
- fog;
- rain;
- rust;
- toxic vegetation;
- darkness.

Avoid:
- excessive detail;
- busy compositions;
- bright saturation.

---

# Audio Asset Rules

Audio assets should:
- reinforce isolation;
- sound wet and industrial;
- support tension;
- avoid overproduction.

Main sounds:
- rain;
- breathing filters;
- wind;
- organic movement;
- rusted machinery;
- mud footsteps.

---

# Import Rules

Before importing assets into GameMaker:

Verify:
- correct resolution;
- clean transparency;
- naming convention;
- consistent palette;
- proper alignment;
- readable silhouette.

Never import random temporary assets into production folders.

---

# MVP Restriction Rules

For MVP:
- use placeholders when possible;
- avoid polishing too early;
- prioritize iteration speed;
- keep assets lightweight.

Do not:
- create cinematic assets;
- create massive spritesheets;
- create high-frame animations;
- create unnecessary variants.

---

# Validation Checklist

Before approving assets, verify:

- consistent with Art Bible;
- readable at gameplay scale;
- low-detail enough;
- properly named;
- organized correctly;
- performance-friendly;
- visually aligned with ToxicLands identity.

---

# Response Format After Work

When finished, summarize:

1. created or modified assets;
2. folders affected;
3. naming convention validation;
4. readability concerns;
5. performance considerations;
6. what was intentionally avoided.