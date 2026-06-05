# Isaac's Gym Tracker

A personal mobile-first workout tracking web app. Built to support a PT-assessed training program focused on injury prevention (PFPS, tendinitis), ski season prep, and general conditioning.

**Live app:** https://iwitt1.github.io/gymwebbapp

---

## What it does

- Shows the week's 5-day training plan, with today highlighted and completed days marked
- Tap a day to open the full workout — exercise list, sets/reps, tempo, and coaching cues
- Log weight and reps per set, pre-filled from your last session and PR
- Flag exercises as Subbed or Skipped/Pain with one tap
- Add notes per exercise (pain details, substitutions)
- Rest timer auto-starts after each logged set (2 min default, +30s, Done)
- Post-workout summary with an exportable log formatted for a Claude check-in
- Progress tab with volume-over-time charts for 5 training categories

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
