# Architecture

## Overview

Single-file web app — all HTML, CSS, and JavaScript live in `index.html` (~1680 lines). No framework, no build step, no dependencies bundled at build time. Deployed as a static site via GitHub Pages. Data persists in Supabase, with localStorage as a transparent cache layer.

---

## Stack

| Layer | Choice | Why |
|---|---|---|
| UI | Vanilla HTML/CSS/JS | No build tooling, no framework overhead, single file is easy to edit and deploy |
| Fonts | DM Sans + DM Mono (Google Fonts CDN) | Clean, legible on mobile |
| Charts | Custom canvas rendering | No Chart.js dependency; simple line chart is sufficient |
| Data | Supabase (Postgres via REST) | Free tier, good anon key support, no backend needed |
| Cache | `localStorage` | Instant load from cache; Supabase sync happens in background |
| Hosting | GitHub Pages | Free, auto-deploys from `main` on push |

---

## File Structure

```
gymwebapp/
├── index.html          # The entire app
├── README.md
├── ARCHITECTURE.md     # This file
├── ROADMAP.md
└── PARKING_LOT.md
```

---

## App Structure (inside index.html)

### Layout

Three-panel shell with a sticky top bar and fixed bottom nav:

```
┌────────────────────────┐
│  Top bar (sticky)      │
├────────────────────────┤
│  Active page content   │
│  (scrollable)          │
├────────────────────────┤
│  Bottom nav (fixed)    │
└────────────────────────┘
```

Three pages toggled by `showPage(name)`:
- `home` — weekly overview, day cards
- `workout` — active workout session
- `progress` — volume charts + log

### Key Constants

- `WORKOUT_PLAN` — the full 5-day program, hardcoded. Each day has `id`, `name`, `subtitle`, `type`, `focus`, and `blocks` (exercise groups). Each exercise has `id`, `name`, `sets`, `tempo`, `tags`, `targetSets`, and `cue`. **Do not simplify or replace this data — it was built from a PT assessment.**

### Global State

```js
currentPage     // which page is visible
currentWorkout  // the WORKOUT_PLAN entry currently open
activeSession   // { workoutId, startTime, sets: {exId: [{weight, reps, done}]}, flags: {}, notes: {} }
restTimer       // setInterval handle
restDuration    // default 120s
restRemaining   // countdown
restTotal       // for progress bar
```

### Key Functions

| Function | What it does |
|---|---|
| `showPage(name)` | Switches visible page, triggers render |
| `renderHome()` | Builds week grid, marks today and completed days |
| `openWorkout(workoutId)` | Loads exercise logs, initializes `activeSession`, calls `renderWorkout` |
| `renderWorkout(workout)` | Renders full day plan with exercise cards |
| `renderExerciseCard(ex)` | Renders a single exercise card (collapsed + expanded state) |
| `toggleExExpand(exId)` | Expands/collapses an exercise card |
| `toggleSetDone(exId, setIndex)` | Marks a set complete, starts rest timer |
| `refreshExerciseCard(exId)` | Re-renders a single card in-place (avoids full re-render) |
| `setFlag(exId, flag)` | Sets Subbed/Skipped flag on an exercise |
| `finishWorkout()` | Saves session to Supabase + localStorage, navigates back |
| `startRestTimer(seconds)` | Starts countdown timer UI |
| `renderProgress()` | Renders the progress tab (area selector + chart) |
| `renderProgArea(areaId)` | Loads volume data for one area and draws chart |
| `drawLineChart(...)` | Custom canvas line chart renderer |
| `renderLog()` | Renders recent workout log list |
| `openExportModal()` | Builds Claude check-in text blob |

---

## Data Layer

### Supabase Tables

**`workout_logs`** — one row per completed workout session
```
id          uuid (PK)
date        date
workout_id  text  (dayA–dayE)
duration    int   (minutes)
notes       text
created_at  timestamp
```

**`exercise_logs`** — one row per exercise, updated each session
```
id          uuid (PK)
ex_id       text  (matches WORKOUT_PLAN exercise id)
last_weight float
last_reps   int
pr_weight   float
pr_reps     int
target      text
updated_at  timestamp
```

### Auth

Anon/public key only. No user auth — this is a personal single-user app. The key is embedded in the file. This is acceptable for personal use but means anyone with the key can read/write the data.

### Cache Strategy

```
getWorkoutLogs()  → return localStorage cache immediately
                  → kick off refreshWorkoutLogs() in background
                  → background fetch updates localStorage

saveWorkoutLog()  → update localStorage immediately
                  → upsert to Supabase in background
```

Same pattern for `getExLogs()` / `saveExLogs()`. The app always feels fast; Supabase is the source of truth.

---

## Workout Program

5-day split, days keyed by JS `getDay()` index:

| Key | Day | Name | Focus |
|---|---|---|---|
| `dayA` | Monday (1) | Lower A | Posterior chain, hip abduction |
| `dayB` | Tuesday (2) | Upper A | Pull, rear delt |
| `dayC` | Thursday (4) | Lower B | Quad emphasis, knee conditioning |
| `dayD` | Friday (5) | Upper B | Push, chest, shoulders |
| `dayE` | Saturday (6) | Athletic | Full body, power, core |

Exercise tags: `knee`, `hip`, `upper`, `power`, `mob`, `core`

Progress chart areas: Lower Body, Upper Push, Upper Pull, Power, Knee Rehab

---

## Deployment

```bash
cd ~/Developer/gymwebbapp
git add index.html
git commit -m "description"
git push
```

GitHub Pages auto-deploys from `main` within ~60 seconds. Live at: https://iwitt1.github.io/gymwebbapp
