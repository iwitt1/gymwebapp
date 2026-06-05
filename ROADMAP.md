# Roadmap

Priority order within each phase. Items move here from the Parking Lot once they're committed.

---

## Phase 1 — Fix Core Bugs ✓ Shipped

All three bugs had the same root cause: `openWorkout()` called `showPage('workout')`, which tried to call `.classList.add()` on the non-existent `nav-workout` element, throwing a TypeError that aborted execution before `renderWorkout()` ever ran. Fixed by replacing `showPage('workout')` with direct page-switching that doesn't reference the missing element.

~~1. Day cards not all clickable~~
~~2. Workout views not loading when a day is tapped~~
~~3. Exercise navigation not working~~

---

## Phase 2 — Core Workout Experience Polish

Once the app works end-to-end, tighten the experience.

4. **Non-weighted exercise completion** — warmup and mobility exercises (stationary bike, 90/90 stretches, etc.) have no sets to log. Tapping the status circle should mark them done.
5. **Session persistence** — if the browser closes mid-workout, `activeSession` is lost. Persist it to localStorage on every change; auto-restore when the same workout is tapped.
6. **Pre-fill weight/reps from last session** — verify this is pulling from `exercise_logs` correctly and displaying in set inputs.
7. **PR display** — confirm PR is shown per-exercise and updates correctly on finish.
8. **Rest timer feel** — verify auto-start on set complete works; test +30s and Done buttons; consider haptic feedback on mobile (Vibration API).
9. **Finish workout confirmation** — brief summary before saving: sets logged, duration, flagged exercises.

---

## Phase 3 — Progress & History

9. **Progress charts — verify data pipeline** — confirm volume is calculated and charted correctly per area. Check that exercise tags map correctly to chart areas.
10. **Reassess progress charts entirely** — the current design shows aggregate volume over time, which may not be the most useful view. Candidates: per-exercise weight progression, side-by-side left/right comparisons for single-leg work, session completion streaks. Decide what's actually useful to look at before investing in the chart code.
11. **Log view** — verify recent workouts display correctly with expandable details.
12. **Export for Claude check-in** — verify the generated text includes all relevant data (sets, weights, flags, notes, duration).

---

## Phase 4 — Rehab & Goal Tracking

Tied to the specific goals: PFPS/tendinitis prevention, ski prep by November, hip abduction deficit.

12. **Knee Rehab area chart** — ensure knee-tagged exercises are correctly captured and the trend is meaningful.
13. **Hip Abduction tracking** — consider a dedicated callout on the progress tab for left-side hip abduction (the PT-assessed deficit).
14. **Ski season countdown** — a simple "X weeks to ski season" on the home or progress tab to frame training context.
15. **Running ramp guard** — parking lot idea, see PARKING_LOT.md.

---

## Phase 5 — Claude-Driven Program Adaptation

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
