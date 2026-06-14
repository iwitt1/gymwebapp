# Parking Lot

Ideas and open questions that aren't scheduled yet. Nothing here is committed. Items graduate to ROADMAP.md when we decide to build them.

---

## Feature Ideas

**Running ramp guard** ✓ Shipped in Phase 4 — `run_logs` Supabase table, 10% week-over-week check, displayed on Progress tab.

**Bodyweight logging**
Periodic weigh-ins to track "lean athletic build" goal over time. Probably just a number + date, shown as a trend line on the progress tab. Low priority — the training data matters more.

**Mobility session type**
Rest days could optionally log a mobility/stretching session. Not a full workout, just a checkbox or duration. Could help track consistency of the soft tissue work.

**Warm-up / activation block**
Some exercises are listed as warm-up or activation (e.g., ankle dorsiflexion, wall slides). Currently they're just exercises in the list. Could be visually separated or have a different completion model.

**Photo progress**
Purely optional. Out of scope for now.

**Sharing / export to Google Sheets**
Export workout history to a spreadsheet for deeper analysis. Low priority given the Claude check-in flow already covers this.

**Notifications / reminders**
Push or local notifications to remind on workout days. Requires a service worker or native wrapper. Probably not worth the complexity for a personal single-user app.

---

## Bugs (found, not yet fixed)

**Workout duration is wildly inflated**
`finishWorkout()` computes duration as wall-clock from `activeSession.startTime`, which is set when the workout is first opened. Because sessions persist across a browser close and auto-resume, leaving a workout open for hours/days produces nonsense durations (Week 1 logged 2694 min and 1451 min). Options: (a) cap at a sane max, (b) track active time only, or (c) prompt to confirm/edit duration at finish. Low urgency — doesn't affect training data — but it pollutes the log and any future volume math.

---

## Technical Debt & Open Questions

**Anon key in source**
The Supabase anon key is embedded in `index.html`, which is public. For a personal single-user app with only anon access, this is low risk — but Row Level Security (RLS) should be reviewed on the Supabase side to ensure only appropriate operations are possible with the anon key.

**Single-file scaling**
`index.html` is ~1680 lines and will keep growing. At some point it becomes hard to navigate. Options: add HTML comments as section markers (low friction), or eventually split into separate files and add a simple build step (higher friction but more maintainable). Not urgent yet.

**localStorage size limits**
~5MB per origin. With 100 workout logs and exercise data this is nowhere near the limit. Not a real concern for years.

**Program ID coupling**
Exercise IDs (e.g., `a5`, `c7`) are the foreign key between `WORKOUT_PLAN` and `exercise_logs`. If an exercise is renamed or replaced, old logs will have orphaned IDs. No migration path exists today. Should be handled carefully if the program changes after PT follow-up.

**No user auth**
Currently single-user, no auth. If this were ever shared or made multi-user, the data model and security would need a rethink. Not planned.

---

## Deferred Decisions

**Chart library**
Custom canvas rendering works and avoids a dependency. If charts get significantly more complex (multiple series, tooltips, zoom), it may be worth pulling in Chart.js. Revisit if chart requirements grow.

**PWA / installable app**
Adding a manifest + service worker would let this install as a home screen app on iOS. The mobile-first design already makes it feel app-like. The added complexity (caching strategy for offline, update flow) is probably not worth it unless the GitHub Pages loading speed becomes an issue.
