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
- Cardio logging on any day: pick a modality (run, cycle, stair stepper, row, elliptical, incline walk, swim, other), log minutes and optional miles — from the Progress tab or any Home day card's swap sheet. Runs still feed the 10% weekly ramp guard.
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

5-day split, hardcoded from a PT assessment. Do not simplify or replace the exercise data.

| Day | Workout | Focus |
|---|---|---|
| Monday | Lower A | Posterior chain, hip abduction |
| Tuesday | Upper A | Pull, rear delt |
| Thursday | Lower B | Quad emphasis, knee conditioning |
| Friday | Upper B | Push, chest, shoulders |
| Saturday | Athletic | Full body, power, core |

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
