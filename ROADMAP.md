# Roadmap

Priority order within each phase. Items move here from the Parking Lot once they're committed.

---

## Phase 1 — Fix Core Bugs ✓ Shipped

All three bugs had the same root cause: `openWorkout()` called `showPage('workout')`, which tried to call `.classList.add()` on the non-existent `nav-workout` element, throwing a TypeError that aborted execution before `renderWorkout()` ever ran. Fixed by replacing `showPage('workout')` with direct page-switching that doesn't reference the missing element.

- ~~Day cards not all clickable~~
- ~~Workout views not loading when a day is tapped~~
- ~~Exercise navigation not working~~

---

## Phase 2 — Core Workout Experience Polish

Most items shipped. Two remain open.

**Shipped:**
- ~~Non-weighted exercise completion — warmup and mobility exercises (stationary bike, 90/90 stretches, etc.) tap the status circle to mark done~~
- ~~Session persistence — persists to localStorage on every change; auto-restores when the same workout is tapped~~
- ~~Pre-fill weight/reps from last session — uses `refreshExLogs()` on new session to bypass stale cache~~
- ~~Set hint cleanup — prev/PR shown once per exercise above set rows; per-set targets removed~~
- ~~Finish workout confirmation — summary modal before saving: sets logged, duration, flagged exercises~~

**Still open:**
- PR display — confirm PR is shown per-exercise and updates correctly on finish
- Rest timer feel — verify auto-start on set complete works; test +30s and Done buttons; consider haptic feedback on mobile (Vibration API)

---

## Phase 3 — Progress & History

**Shipped:**
- ~~Progress charts redesigned — exercise dropdown (grouped by workout day) replaces area tabs. Weighted exercises show max weight per session over time. Completion-only exercises show a dot timeline (filled = done, hollow = skipped) with sessions/week average.~~
- ~~Non-weighted completions now saved to Supabase on workout finish (previously lost on session end).~~

**Focus area feedback (e.g. knee rehab trend, hip abduction deficit) deferred to Phase 5** — will be done as a periodic Claude Cowork review and the summary pushed as a note into the app, rather than auto-computed charts.

- ~~Log view — tap to expand each entry showing full exercise breakdown, sets, flags, notes, and completion status~~
- ~~Export for Claude check-in — includes sets, weights, flags, notes, duration, non-weighted completions, and a PR summary section~~

---

## Phase 4 — Rehab & Goal Tracking ✓ Shipped

Tied to the specific goals: PFPS/tendinitis prevention, ski prep by November, hip abduction deficit.

- ~~**Knee Rehab chart** — "Knee Health" card on Progress tab showing % of knee-tagged exercises completed per session (last 8 sessions), with avg and trend.~~
- ~~**Hip Abduction callout** — Dedicated card on Progress tab: a5 (Cable Hip Abduction) weight trend line + a6 (Banded) completion. Left-priority note. Reads from exercise_logs + workout_logs.~~
- ~~**Ski season countdown** — Banner on Home tab counting weeks to November 1, 2026. Auto-hides after that date.~~
- ~~**Running ramp guard** — "Running" section on Progress tab. Date + miles log form, stored in Supabase `run_logs`. Shows last 4 weeks of runs. Computes current vs prior 7-day mileage — warns if volume up >10%.~~
- ~~**Active day logging** — Rest/active day cards on Home tap to open a free-text activity log. Stored in Supabase `activity_logs`. Logged activity shown on the day card.~~
- ~~**Weekly schedule flexibility** — Swap button on every Home day card. Opens a picker (5 workouts + Active Day + Rest). Overrides saved per-week in localStorage, auto-revert next week. Supports travel/rescheduling without changing the default program.~~

---

## Phase 5 — Claude-Driven Program Adaptation (In Progress)

**Shipped so far:**
- ~~`app_config` Supabase table (key-value: program_start_date, coaching_note)~~
- ~~Week counter on home screen ("Week X · Phase I")~~
- ~~Coaching note block on home screen — tap to edit via Settings modal~~
- ~~Settings modal (gear icon in top bar) — edit coaching note + start date~~
- ~~Enhanced export — qualitative notes textarea, week number, activity logs, run logs included~~
- ~~`TRAINING_PLAN.md` — living plan document updated at each check-in~~
- ~~**Weekly exercise targets** — `program_targets` in app_config (JSON of per-exercise weight/reps/note). Settings import box; 🎯 target line in the set logger; recommended load pre-fills the inputs. This is the "Claude advises, Isaac approves" loop made concrete.~~

**Remaining / deferred:**
- ~~Exercise parameter overrides (per-exercise set/rep target changes without full plan rewrite)~~ — shipped as Weekly exercise targets above
- Phase II readiness detection / phase transition UI
- Deload week scheduling

---

## Phase 5 — Claude-Driven Program Adaptation (original spec)

The goal: weekly Claude check-in → Claude suggests workout adjustments → app applies them to future sessions.

**Architecture:**

The workout plan moves from a hardcoded JS constant to a Supabase-backed config with a version history. The app reads from the DB on startup and falls back to the hardcoded default.

New Supabase table:
```sql
create table program_config (
  id serial primary key,
  version int not null default 1,
  phase int not null default 1,       -- 1–4
  program_week int not null default 1,
  start_date date not null,
  workout_plan jsonb,                  -- null = use hardcoded default
  claude_notes text,                   -- what changed and why
  updated_at timestamptz default now()
);
```

**Weekly flow:**
1. Export for Claude check-in (already exists — enhance to include current week, phase, PRs, flagged exercises, pain notes)
2. Claude reviews and produces: summary of suggested changes + optionally a full updated `WORKOUT_PLAN` JSON blob
3. App gets a Settings page with "Import Program Update" — paste Claude's JSON, app validates and stores it with a version bump
4. Previous versions preserved in the table for rollback

**App changes required:**
- Program start date (first-time setup or settings)
- Current week/phase display on home screen ("Week 3 · Phase I — Foundation")
- Enhanced Claude export with week, phase, and PR summary
- Settings page with program import
- On startup: read from `program_config`, fall back to hardcoded `WORKOUT_PLAN` if empty

**Design principle:** Claude advises, Isaac approves. No API key in the app. The weekly check-in conversation is the interface.

---

## Phase 6 — Future Proofing

16. **Program versioning** — stable exercise IDs are the FK between `WORKOUT_PLAN` and `exercise_logs`. If an exercise is replaced, old logs become orphaned. Needs a migration path.
17. **Multi-week periodization** — currently the program is flat. Phase 5 architecture supports wave loading and phase progressions once the config is DB-backed.
18. **Error handling & offline state** — surface Supabase errors gracefully; handle no-network scenarios explicitly.

---

## Completed

_(items move here when shipped)_
