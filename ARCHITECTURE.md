# Architecture

## Overview

Single-file web app — all HTML, CSS, and JavaScript live in `index.html` (~1900 lines). No framework, no build step, no dependencies bundled at build time. Deployed as a static site via GitHub Pages. Data persists in Supabase, with localStorage as a transparent cache layer.

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

Four pages toggled by `showPage(name)`:
- `home` — weekly overview, day cards
- `workout` — active workout session
- `progress` — per-exercise dropdown with charts
- `log` — recent workout history with expandable entries

### Key Constants

- `WORKOUT_PLAN` — the full 5-day program, hardcoded. Each day has `id`, `name`, `subtitle`, `type`, `focus`, and `blocks` (exercise groups). Each exercise has `id`, `name`, `sets`, `tempo`, `tags`, `targetSets`, and `cue`. **Do not simplify or replace this data — it was built from a PT assessment.**

### Global State

```js
currentPage     // which page is visible
currentWorkout  // the WORKOUT_PLAN entry currently open
activeSession   // { workoutId, startTime, sets: {exId: [{weight, reps, done}]}, flags: {}, notes: {}, completed: {exId: bool} }
restTimer       // setInterval handle
restDuration    // default 120s
restRemaining   // countdown
restTotal       // for progress bar
activeProgEx    // exercise ID currently selected in the progress tab
swapTargetDay   // day index being swapped (set by openSwapModal)
activityDateStr // ISO date string for the activity log modal
activityDayLabel // display label for the activity log modal
```

### Week Schedule Flexibility

Weekly overrides stored in `localStorage` under key `week_sched_YYYY-MM-DD` (Monday of the current week). Value is an object mapping JS day index → assignment:
- `'dayA'`–`'dayE'`: overrides to that workout
- `'active'`: active/rest day with activity logging
- `'rest'`: rest day, no logging
- Key absent: falls back to `DEFAULT_DAY_MAP` (or null for Wed/Sun)

Overrides are week-scoped and auto-expire when the week changes (old keys remain in localStorage but are never read).

### Constants
- `DEFAULT_DAY_MAP` — `{ 1:'dayA', 2:'dayB', 4:'dayC', 5:'dayD', 6:'dayE' }` — base workout schedule
- `KNEE_EX_IDS` — Set of exercise IDs tagged `knee`, used for the rehab completion chart

`activeSession.completed` is used for non-weighted exercises (warmup/mobility) that have no sets to log — tapping their status circle toggles the entry here instead.

`activeSession` is persisted to localStorage on every mutation via `saveSessionState()` and restored by `loadSessionState()` when the same workout is opened, so an interrupted session survives a browser close.

### Key Functions

| Function | What it does |
|---|---|
| `showPage(name)` | Switches visible page, triggers render |
| `renderHome()` | Builds week grid, marks today and completed days |
| `openWorkout(workoutId)` | Checks for saved session via `loadSessionState()`, loads exercise logs via `refreshExLogs()`, initializes `activeSession`, calls `renderWorkout` |
| `renderWorkout(workout)` | Renders full day plan with exercise cards |
| `renderExerciseCard(ex)` | Renders a single exercise card (collapsed + expanded state) |
| `toggleExExpand(exId)` | Expands/collapses an exercise card |
| `toggleSetDone(exId, setIndex)` | Marks a set complete, starts rest timer, calls `saveSessionState()` |
| `toggleNonWeightedDone(exId)` | Toggles completion on exercises with no sets (warmup/mobility); updates `activeSession.completed` |
| `refreshExerciseCard(exId)` | Re-renders a single card in-place (avoids full re-render) |
| `setFlag(exId, flag)` | Sets Subbed/Skipped flag on an exercise |
| `saveSessionState()` | Writes `activeSession` to localStorage so in-progress sessions survive a browser close |
| `loadSessionState()` | Restores `activeSession` from localStorage if the same workout is opened |
| `finishWorkout()` | Computes summary (duration, sets, flags) and shows confirmation modal |
| `confirmFinish()` | Saves session to Supabase + localStorage, clears `activeSession`, navigates back |
| `startRestTimer(seconds)` | Starts countdown timer UI |
| `renderProgress()` | Renders exercise dropdown grouped by workout day |
| `renderExerciseProgress(exId)` | Fetches session history for one exercise; draws weighted line chart or completion dot chart |
| `drawLineChart(...)` | Custom canvas line chart — max weight over time for weighted exercises |
| `drawCompletionChart(...)` | Custom canvas dot timeline — filled = done, hollow = skipped, for non-weighted exercises |
| `renderLog()` | Renders recent workout history; tap to expand full exercise breakdown |
| `openExportModal()` | Builds Claude check-in text: sets, weights, flags, notes, completions, PR summary |
| `getEffectiveDayAssignment(dayIndex)` | Returns workout ID, `'active'`, `'rest'`, or `null` for a given JS day index, respecting weekly overrides |
| `getWeekSchedule()` | Reads localStorage week override (keyed by Monday date of current week) |
| `setWeekScheduleDay(dayIndex, val)` | Writes a day override; `null` removes it (reverts to default) |
| `openSwapModal(dayIndex, label, dateStr, event)` | Opens the day-swap bottom sheet for a given day card |
| `applyDaySwap(dayIndex, val)` | Applies a week schedule override and re-renders home |
| `openActivityModal(dayIndex, label, dateStr, event)` | Opens the activity log input sheet for a rest/active day |
| `saveActivityEntry()` | Saves a free-text activity to `activity_logs` in Supabase + cache |
| `renderKneeHealth()` | Draws knee completion % bar chart (last 8 sessions) in the Progress rehab section |
| `renderHipAbduction()` | Draws a5 weight trend + a6 completion summary in the Progress rehab section |
| `renderRunSection()` | Renders recent run logs + 10% ramp guard warning in the Progress running section |
| `openAddRunModal()` / `saveRunEntry()` | Opens and saves run log entries to `run_logs` |
| `drawBarChart(canvasId, labels, data, color, maxVal)` | Custom canvas bar chart — used for knee completion % |
| `makeId()` | Generates a UUID (crypto.randomUUID with fallback) for new log entries |

---

## Data Layer

### Supabase Tables

**`workout_logs`** — one row per completed workout session
```
id            text (PK — timestamp string)
workoutId     text  (dayA–dayE)
workoutName   text
date          timestamptz
duration      int   (minutes)
exercises     jsonb — array of:
                { exId, name, sets: [{weight, reps, done}],
                  completed: bool,   ← non-weighted done state
                  flag: null|'skipped'|'subbed',
                  note: text }
```

**`run_logs`** — one row per run entry
```
id          uuid (PK — gen_random_uuid())
date        date
miles       numeric
notes       text
created_at  timestamptz default now()
```

**`activity_logs`** — one row per active/rest day entry
```
id          uuid (PK — gen_random_uuid())
date        date
activity    text
created_at  timestamptz default now()
```

**`exercise_logs`** — one row per exercise, updated each session (keyed by `ex_id`)
```
ex_id       text (PK — matches WORKOUT_PLAN exercise id)
last_weight text
last_reps   text
pr_weight   text
pr_reps     text
last_date   timestamptz
```

Note: `exercise_logs` is stored as a single JSONB blob in the app's cache and upserted as key-value pairs. It tracks only the most recent weight/reps and the all-time PR — not a full time series. Time series data is derived from `workout_logs.exercises`.

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

Progress tab: exercise dropdown (grouped by workout day). Weighted exercises show a max-weight-per-session line chart. Non-weighted (warmup/mobility) show a dot timeline with sessions/week average. Time series data is derived from `workout_logs`.

---

## Deployment

```bash
cd ~/Developer/gymwebbapp
git add index.html
git commit -m "description"
git push
```

GitHub Pages auto-deploys from `main` within ~60 seconds. Live at: https://iwitt1.github.io/gymwebbapp
