# Isaac's Gym Tracker

A personal mobile-first workout tracking web app. Built to support a PT-assessed training program focused on injury prevention (PFPS, tendinitis), ski season prep, and general conditioning.

**Live app:** https://iwitt1.github.io/gymwebbapp

---

## What it does

- Shows the week's 5-day training plan, with today highlighted and completed days marked
- Tap a day to open the full workout — exercise list, sets/reps, tempo, and coaching cues
- Log weight and reps per set, pre-filled from your last session and PR
- Weekly targets: a 🎯 recommended load/reps per exercise (imported from your Claude check-in) shown in the set logger and pre-filled into the inputs
- Tap the status circle on non-weighted exercises (warmup, mobility) to mark them done
- Flag exercises as Subbed or Skipped/Pain with one tap; add per-exercise notes
- Rest timer auto-starts after each logged set (2 min default, +30s, Done)
- In-progress sessions survive a browser close — auto-restores when you re-open the workout
- Finish workout confirmation: shows sets logged, duration, and flagged exercises before saving
- Progress tab: exercise dropdown with per-exercise charts — max weight over time for weighted exercises, dot completion timeline for non-weighted
- Log tab: recent workout history with tap-to-expand exercise breakdown
- Cardio logging on any day: pick a modality (run, cycle, hike, stair stepper, row, elliptical, incline walk, swim, paddleboard, HIIT, other), log minutes and optional miles — from the Progress tab or any Home day card's swap sheet. Runs still feed the 10% weekly ramp guard.
- **Garmin CSV import** (Settings): paste the Garmin Connect activities export and it bulk-loads into the cardio log — activity types are mapped automatically, duplicates and strength-training rows are skipped, and avg HR + total ascent are kept in the note. Re-pasting the same export is safe.
- Export for Claude check-in: weekly summary with sets, PRs hit, flags, and notes

---

## Stack

- Pure HTML/CSS/JS — no framework, no build step
- All code lives in a single `index.html`
- Data persists in [Supabase](https://supabase.com) (Postgres via REST API)
- `localStorage` is used as a cache so the app loads instantly
- Hosted on GitHub Pages

See [ARCHITECTURE.md](ARCHITECTURE.md) for full technical detail.

---

## Training Program

**Phase II — Ski Prep** (entered Sept 2026, Week 15). 3-day split, hardcoded from a PT assessment. Do not simplify or replace the exercise data.

| Day | Workout | Focus |
|---|---|---|
| Monday | Lower A | Posterior chain, hip abduction, knee rehab maintenance |
| Tuesday | Conditioning | Zone 2, 45 min — logged via cardio logging |
| Wednesday | Upper A **or** Upper B | Alternates automatically: pull on odd program weeks, push on even |
| Thursday | Conditioning | Intervals, 6×2 min hard / 2 min easy |
| Friday | Lower B — Ski Core-5 | Skater bounds, leg press, lateral step-up, step-down, wall sit, band walk |

History: 5-day → 4-day in Jul 2026 (the never-trained Saturday Athletic day folded into Thursday), then 4-day → 3-day in Sept 2026 to match actual training frequency. Nothing was deleted at either step — displaced exercises live in each day's "Optional / rotate" block. Wednesday's push/pull alternation is resolved from the program week, so no manual swapping is needed.

---

## Making changes

Edit `index.html`, then deploy:

```bash
cd ~/Developer/gymwebbapp
git add index.html
git commit -m "description of change"
git push
```

GitHub Pages auto-deploys within ~60 seconds.

---

## Docs

- [ARCHITECTURE.md](ARCHITECTURE.md) — stack, data model, key functions, design decisions
- [ROADMAP.md](ROADMAP.md) — planned work, prioritized by phase
- [PARKING_LOT.md](PARKING_LOT.md) — ideas and open questions not yet scheduled
