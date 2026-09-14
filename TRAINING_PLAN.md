# Isaac's Training Plan

**Living document — updated at each Claude check-in.**
Last updated: September 14, 2026 (Week 15 — **Phase II transition**: 3-day split, Thursday→Friday Core-5, skater bounds replace the goblet/deadlift power block, shoulder deload, d11 retired)

---

## Where You Are

**Phase II — Ski Prep** (entered Week 15, Sept 14 2026)
Program start: June 9, 2026 (Week 1)
Phase I ran Weeks 1–14.

**Ski season target: November 1, 2026 — 7 weeks out.**

Primary objectives this phase:
- **Eccentric quad capacity** — the #1 physical demand of a ski day (moguls, long descents, absorbing terrain)
- **Frontal-plane strength and power** — ski turns are lateral force production, not sagittal
- **Quad endurance under sustained flexion** — a ski run is a long isometric
- **Aerobic + repeat-effort capacity** — a ski day is 4–6 hours of intermittent work. Base is already solid (26 hrs / 12,747 ft since July, per Garmin); the job is consistency and one long eccentric-loaded day per week, not more volume
- Maintain the Phase I rehab dose (knee, hip abduction) rather than building it

Phase I objectives, closed out:
- ~~Eliminate PFPS/patellar tendinitis symptoms under load~~ — **done.** Zero pain flags on any knee-tagged exercise across 14 weeks.
- Quad torque-to-bodyweight ~2.3 → 3.0 Nm/kg — not directly measured, but single-leg press went 70 → 90×10/side. Needs a PT re-test to confirm.
- Left hip abduction deficit — **partially closed.** `a5` finally moved 20 → 25; still the weakest link.
- Aerobic base — **met** (confirmed Sept 14 from Garmin: 20 sessions / 26.4 hrs / 12,747 ft since Jul 4). It was invisible because none of it was in the app, not because it wasn't happening.

---

## Phase II Structure

### Weekly split (3 days, as of Week 15 / Sept 14, 2026)
| Day | Session | Focus |
|-----|---------|-------|
| Monday | Lower A | Posterior chain, hip abduction, knee rehab maintenance |
| Tuesday | **Conditioning** | Zone 2, 45 min (bike / stairs / row) — log it |
| Wednesday | Upper — **alternates** | Odd program weeks → Upper A (pull). Even → Upper B (push). Automatic, no swap needed. |
| Thursday | **Conditioning** | Intervals, ~25 min: 6×2 min hard / 2 min easy |
| Friday | Lower B — **Ski Core-5** | Skater bounds → leg press → lateral step-up → step-down → wall sit → band walk |
| Sat / Sun | Rest / Active | Off, or an easy ride/walk — log if active |

**Why 3 days, and why 2 of them are lower:** actual frequency over Weeks 12–14 was 4, 2, 2 — the 4-day plan wasn't the real schedule. Programming for 3 honest days beats programming for 4 aspirational ones, because on the 4-day plan the *ski work* was always the session that got dropped. Both lower days are ski-critical so they stay weekly; upper body is maintenance in this phase (he's PR'ing without needing more, and the shoulder actively benefits from less), so it alternates push/pull at one session per week. Reduced frequency with preserved weekly stimulus per movement pattern is the correct trade at 1 upper day.

**Upper-day rotation is automatic.** `DEFAULT_DAY_MAP` maps Wednesday to an `'upper'` sentinel, resolved by program-week parity in `resolveDayAssignment()`. Over the 7 weeks to Nov 1 that yields 4 pull / 3 push — a deliberate bias given the current shoulder irritation. If a 4th day materialises, swap Thursday to whichever upper day isn't scheduled that week.

*Note on week numbering:* June 9 2026 was a Tuesday, so program weeks run Tue–Mon. The home screen shows Week 14 on Mon Sept 14 and rolls to Week 15 on Tue Sept 15; the Week 15 plan is the week of Sept 15–21.

**Friday is a hard Core-5.** Thursday/Lower B collapsed three consecutive times on the Phase I structure (Jul 30, Aug 27, Sept 10) — the Sept 10 session was 30 minutes and `c5`, the explicitly-labelled gate lift, went undone while an *Optional* exercise got completed. Trimming it at Week 11 did not work. So the day is now six committed movements in strict priority order, with a 5-minute warmup:

1. `e13` Skater Bound — ski power, bodyweight
2. `c5` Single-Leg Leg Press — 3 sets, not 4 (traded a set for it actually happening)
3. `e9` Lateral Step-Up — frontal plane
4. `c7` Box Step-Down — eccentric knee, now loaded
5. `c8` Shallow Wall Sit — quad endurance, promoted out of Optional
6. `e7` Lateral Band Walk — glute med (the one to drop if truly out of time)

Everything else on that day is Optional and genuinely optional. The warmup dropped from 6 items to 3: the bike and both static stretches (`c2`, `c4`) moved to Optional — the bike was eating 5 of 30 minutes, and long static holds before lifting transiently reduce force output, so they belong at the end anyway.

**Power block replaced (Week 15).** `e4` goblet squat and `e5` DB deadlift moved to Optional. At 25–30 lbs they were not a training stimulus for someone single-leg-pressing 90/side — Isaac's own note was *"incredibly easy for legs"* — while the limiting factor was mid-back discomfort on both. Replaced by `e13` **Skater Bound** (lateral hop + 1-sec stick): the same deceleration/power quality, far more ski-specific, and zero spinal load. Bodyweight only, permanently. Justified by 14 weeks of pain-free knee work, clean step-downs, and a 90 lb single-leg press.

**Session re-sequencing (all days):** exercises are grouped by equipment station so setup happens once — supersets are marked in the app cues ("work X + Y in together"): cable rack, box/step, DBs+bench, leg machines. Mat/floor work is clustered. `a6` banded abduction sits in the Lower A warmup. Nordic curl → accentuated-eccentric machine leg curl (`a10`); band TKE → **Short-Arc Quad** (`a11`). Week 15 adds: `b6`/`b9` moved ahead of the cable block on Upper A (they were cut 2 of the last 3 sessions).

**Target session length: 45–60 min.** Down from 50–75. Recent real durations were 30–49 min; the plan now matches.

Schedule is flexible week-to-week — use the swap feature if travel or life requires it.

### Phase II progressive overload (Weeks 15–21)
- **Weeks 15–17 — build.** Return to and exceed pre-layoff loads. Add load to the two movements that have sat at bodyweight since June (`a12` step-down, `c7` step-down — approved this check-in). Wall sit rebuilds 45 → 60 sec. Skater bounds: quality only, no progression of distance until landings are silent.
- **Weeks 18–19 — ski-specific peak.** Wall sit goes 5° deeper. Skater bounds widen if landings are clean. Add a second weekly interval session. Re-test single-leg press for the PT torque benchmark.
- **Weeks 20–21 — taper into the season.** Hold loads, cut volume ~30%, keep frequency. No PR attempts inside 10 days of the first ski day. Priority shifts to mobility and aerobic top-up.

### Deload
Any week with a pain flag on two or more exercises, or a 3rd consecutive sub-40-min session, is an automatic deload: cut sets ~40%, hold loads, no PRs.

---

## Phase I → II Gate: **PASSED** (Week 15 read)

- [x] Step-Down 3×8/side pain-free at full height — **met** (done clean Jul 14, Jul 29, Aug 25, Sep 2)
- [x] Nordic / eccentric hamstring, controlled full-range lowering — **met** via the accentuated-eccentric machine curl at 80×6×3
- [x] Single-Leg Leg Press 4×10/side pain-free — **met** (90×10, Jul 30)
- [ ] Hip Abduction: left ≥ right symmetry — **not met.** `a5` sat at 20 lbs from June to September, touching 25 only on the last set of Sep 2. The one open item.
- [x] 4+ consecutive weeks, no knee **pain** flags — **met, emphatically** — 14 weeks, zero

**Decision: advance to Phase II with 4 of 5 gates met.** Holding the whole program back for hip symmetry would burn the entire 7-week ski window, and the abduction work isn't gated by readiness — it's gated by the load never being increased. It progresses *inside* Phase II: `a5` is committed to 25 lbs this week, and `e7`/`e13` both load the frontal plane harder than anything in Phase I did.

---

## Conditioning / Stamina — rebuilt on real data (Sept 14)

**Correction to the Week 15 check-in:** that check-in stated cardio was zero. That was wrong — it was zero *in the app*. A Garmin export (Jul 4 – Sep 11) shows **20 sessions, 26.4 hours, 12,747 ft of climbing, 11,650 kcal**. The aerobic base is real and was never the gap.

### What the Garmin data actually shows

| Week of | Sessions | Minutes | Ascent |
|---|---|---|---|
| Jun 29 | 1 | 33 | 194 |
| Jul 6 | 2 | 98 | 737 |
| Jul 13 | 1 | 65 | 717 |
| Jul 20 | 4 | 338 | 2,352 |
| Jul 27 | 1 | 28 | 348 |
| Aug 3 | 1 | 217 | 3,377 |
| Aug 10 | 0 | 0 | 0 |
| Aug 17 | 3 | 142 | 471 |
| Aug 24 | 3 | 160 | 81 |
| Aug 31 | 3 | 430 | 3,610 |
| Sep 7 | 1 | 75 | 860 |

Modalities: 13 rides, 3 paddleboard, 2 commute runs, 1 HIIT, 1 long hike.

**Intensity distribution is the real finding.** Using the observed max HR of 191: ~50% of time easy (Z1–Z2), **32% in Zone 3**, 18% Zone 4. Only **3 of 13 rides** averaged Zone 2 or easier; ten averaged Zone 3. That is the textbook grey-zone pattern — hard enough to cost recovery, easy enough to miss top-end adaptation.

**That's a prescription error, not an execution error.** The plan asked for "strict Zone 2" from someone riding 860–1,176 ft of climbing on 16–22 mile Seattle routes. Zone 2 is not holdable on those gradients. Aerobic TE has been 2.0–3.3 (maintaining to improving) with one 5.0 on the Naples ride, so the training has been productive — just not what the plan called it.

### The prescription (deliberately loose, per Isaac's call Sept 14)

No zone targets. They didn't survive contact with the terrain, and friction is what kept the log empty.

- **~3 sessions a week, one of them long.** Ride/hike how you feel.
- **Log it.** Settings → *Import Garmin CSV*, paste the export, done. That is the whole compliance ask.
- **Knee protection on the bike:** high cadence (85–95 rpm), saddle high, don't grind big gears.

### The hike is the headline

**Sept 6: 8.99 mi, 4h42, 2,434 ft ascent / 2,420 ft descent, avg HR 88.** Hours of sustained eccentric quad loading under accumulating fatigue — a closer match to the demand of a ski day than anything in the gym, and the knee stayed silent through that week's lifting. Treat this as a **functional Phase II gate passed**, and as the single most valuable conditioning session available. One weekly long hike with 2,000+ ft of descent is worth more for Nov 1 than any interval protocol.

**Schedule it on Saturday, not Sunday.** Monday is Lower A (posterior chain + knee); descending 2,400 ft the day before means loading hiked-out legs. Note the likely precedent: the Sept 6 hike was a Sunday, and the Sept 10 Lower B came in at 30 minutes with the gate lift skipped.

---

## Running Integration

Knee is cleared, but running isn't required for skiing and competes for the same recovery.
- Current volume is two ~1.2 mi commute runs (Aug 25, Aug 26) — nowhere near the ramp guard. No concern.
- Commute runs are a good pattern ("ran .75 miles to gym instead" of the bike warmup, Aug 25).
- Don't add running volume in Weeks 20–21; the taper applies to cardio too.

---

## Coaching Notes History

*(Newest at top — this section updated at each check-in)*

**Week 15 → PHASE II TRANSITION (September 14, 2026)**

*Context:* Covers Weeks 12–14. Session counts were 4, 2, 2 — the 4-day plan is not the real schedule. Durations: 87/73/78/35, then 78/49, then 30/46. Sessions are getting shorter, and the back half of each one is what dies. Ski season is 7 weeks out. This check-in moves to Phase II and rebuilds the week around 3 honest days.

*The knee is closed.* Zero pain flags on any knee-tagged exercise in 14 weeks. Step-downs clean and consistent; leg press to 90×10/side; box step-up held at 18" bodyweight with no complaint since June. Four of five Phase II gates met — advancing with hip abduction still open, because that gate is limited by the load never being raised, not by readiness.

*What worked (keep):* Monday is genuinely fixed — 78 min, nearly everything completed, and all three Week 11 interventions stuck (`a11` Short-Arc Quad done both sessions, `a12` step-downs done, `a6` completed from the warmup). Real PRs this block: lat pulldown **125×12×4**, single-arm row **120×10**, incline DB press **35×12 across all 4 sets** with no tendon signal, tricep pushdown **50×15**, SL hamstring curl **50**, eccentric leg curl back to **80×6×3**, and `a5` hip abduction finally touched **25**.

*Problem 1 — Thursday failed a third straight time.* Sept 10 was 30 minutes: `c5` (the labelled gate lift) undone, the entire power block undone, `e7`/`e11` undone — and yet `c6`, an *Optional* exercise, got completed. That last detail says he works from whatever machine is free rather than from the top of the list, so priority has to be enforced by structure, not by labels. Fix: moved to **Friday**, warmup cut 6→3 items, and a hard **Core-5** (see Phase II Structure). Nothing deleted; the rest is Optional.

*Problem 2 — shoulder, and it is bilateral now.* Sept 13 produced three separate complaints in one session: `d8` at 45 → left lower trap **and right elbow at the tricep tendon** (3rd set dropped); `d9` skipped, *"shoulder is beat"*; `d7` left shrug returning at 15. Friday was carrying 3 pressing movements plus 7 sets of lateral raise. Fix: volume cut ~30% — `d7` to 3 sets at 12.5, `d9` to Optional at 2 sets, `d8` held at **40 with a hard 2-set stop rule**. Note the tendon signal has now appeared on the **right** side; the original problem was left, so this is load/volume-driven rather than a one-sided structural issue.

*Problem 3 — third lumbar episode on a loaded hinge.* `a9` single-leg hip thrust, Sep 2: *"Felt in lower back quite a bit after set one. Switching to two legs for today. Likely form."* Prior: `a7` Aug 25 (flagged skipped, *"lower back pain from form"*), `a7` Jun 15. Plus goblet squat and DB deadlift on Aug 27, both *"feel it in middle back even when bracing."* Every loaded hinge/bridge pattern produces it; his self-diagnosis is correct. Fix: `a9` **regressed to two-leg hip thrust for 3 weeks** with a 2-sec top squeeze — removes the pelvic rotation he's compensating for while keeping the glute work. `a7` holds at 40 rather than progressing. `a14` dead bug (anti-extension) and `e10` Pallof (anti-rotation) called out as directly relevant.

*Power block replaced.* `e4`/`e5` retired to Optional; `e13` **Skater Bound** added. Reasoning in Phase II Structure above — the short version is that 25–30 lbs wasn't loading his legs and was loading his spine, and a lateral hop with a stuck landing is both more ski-specific and spine-free.

*`d11` retired.* Not completed once since May 30 — four months of skips across every single Upper B — and it's the movement that started the tendon problem. Parked in Optional with history intact. Pushdowns at 50×15 cover the triceps.

*Two movements finally progressed off bodyweight:* `a12` step-down (+10 lb DBs) and `c7` box step-down (+15 lb DBs). Both have been clean bodyweight since June; "add weight before height" now applies.

*Cardio — I got this wrong, corrected same day.* The first pass of this check-in said cardio was zero and called it the biggest ski-readiness gap. Isaac then supplied a Garmin export: **20 sessions, 26.4 hours, 12,747 ft of climbing since Jul 4.** It was zero *in the app only*. The real finding is intensity distribution (32% of time in Zone 3, only 3 of 13 rides actually Zone 2) — and that traces back to a prescription that asked for Zone 2 on 1,000 ft Seattle climbs, which isn't possible. Zone targets dropped entirely; see the Conditioning section. Lesson for future check-ins: **an empty table in this app means "not logged," never "not done"** — ask before concluding.

*App changes shipped:* 3-day `DEFAULT_DAY_MAP` with an automatic push/pull alternation on Wednesday by program-week parity (4 pull / 3 push over the 7 weeks — a deliberate bias given the shoulder). Rest-day copy on Tue/Thu changed to a Conditioning prompt. **Garmin CSV importer** in Settings — paste the Garmin Connect activities export, it maps activity types, skips duplicates and non-cardio rows, and packs avg HR + ascent into the note field. Three new cardio types added (`hike`, `sup`, `hiit`). This removes the manual double-entry that caused the empty-log problem in the first place.

**Coaching note (in-app, Week 15):** see `program.json` — Phase II summary, the Core-5 rationale, the three fixes, and the cardio prescription.

**Week 11 → return from Italy (August 24, 2026)**

*Context:* ~3.5 weeks off traveling in Italy — some biking (incl. Vesuvius), no lifting. Before the trip (Jul 29–30) Isaac ran the new 4-day program for the first time and it went well. This is a return/deload week: loads cut ~10%, RIR 2–3, no PR attempts, back to pre-trip loads next week if pain-free.

*What worked pre-trip (keep):* The two Week-7 fixes stuck — `a6` banded abduction got completed from the warmup slot, and step-downs (`a12`) got done after moving up. The eccentric leg-curl swap (`a10`) worked at 80×7. PRs: lat pulldown **120×12**, SL leg press **90×10**, SL hamstring curl **50×12**, face pull **60×15**, kickstand RDL 40 (single KB). Baselines set for the new power work: goblet 25×6, DB deadlift 25/arm×5.

*Two problems fixed this week:*
- **TKE still skipped every session.** Root cause per Isaac: the gym has no good vertical post for a band TKE. Swapped `a11` to the **Short-Arc Quad (SAQ)** — same VMO / terminal-extension target, done on a bench with an ankle weight or a light DB over the foot (machine alt: leg-extension top-third with a 2-sec hold). Cut to 2 sets to raise completion odds. Regrouped into the Monday knee block (a11+a12+a13) so it shares the box/bench area.
- **Thursday ran long and its ski/lateral work got fully skipped** (only power + leg machines got done Jul 30). Trimmed and re-ordered: lateral step-up (`e9`) and band walk (`e7`) now come right after the power block; leg extension (`c6`), RDL (`c11`), and balance reach (`e8`) moved to Optional. Leg press stays as the gate lift.

*Session length:* target set to **50–75 min** for every day (durations updated in-app). Optional blocks are only if under time.

*Still open:* `d11` overhead tricep extension reintroduction hasn't actually been tested yet (no Upper B logged since the reintroduction shipped) — first real test is this Friday, light cable, stop at the first signal.

**Coaching note (in-app, Week 11):**
> Back from ~3.5 weeks off (Italy — some biking incl. Vesuvius, no lifting). RETURN WEEK: all loads cut ~10%, RIR 2–3, zero PR chasing — back to your pre-trip loads next week if pain-free. Tendons lose load tolerance faster than strength over a layoff, so ease the eccentric leg curl and RDL especially. Two fixes: TKE is swapped for the Short-Arc Quad (a11) — same VMO work on a bench with an ankle weight, no band-on-a-post; please actually do it (2 sets). And Thursday's trimmed/re-ordered so the lateral step-ups and band walks come right after the power block. Aim every session at 50–75 min; the Optional block is only if you're under time.

**Week 7 → 4-day restructure (July 27, 2026)**

*Context:* Covers ~3 training weeks since the Jul 6 plan (sessions Jul 9, 10, 14, 17, 21 — the two missing exports were pulled via SQL). Decision this check-in: drop from 5 to 4 days/week and re-sequence every session for gym efficiency.

*What the data showed:* No pain flags in weeks — the tendon and knee are quiet. Wins: Kickstand RDL 30→32.5×10 clean, SL hamstring curl held 45, calf raise added load (25×12), incline press 32.5×10 with no tendon signal (~4 weeks pain-free pressing). The problem: the **knee rehab and hip work is exactly what's being skipped** — TKE (a11), the Nordic (a10), dead bug/side plank logged `false` across all three Lower A sessions; banded abduction (a6) uncompleted twice; step-down (a12) hit once of three. The Athletic day (e-block) was never trained in 7 weeks. So Phase II is gated by skipped work + hip asymmetry, not pain.

*Changes shipped:*
- **4-day split:** Mon Lower A, Tue Upper A, Thu Lower B + Power, Fri Upper B. Saturday Athletic dissolved into Thursday (power/lateral/core); leftovers parked in a Thursday "Optional" block. Athletic still selectable via swap for a bonus day.
- **Protect the rehab work:** Lower A re-ordered so TKE + step-down are done fresh (Blocks 1–2, at the cable rack and box); a6 banded abduction moved into the warmup as activation.
- **Equipment supersets** marked in every session (cable rack / box / DBs+bench / leg machines) to cut gym time; mat work clustered.
- **Nordic → accentuated-eccentric machine leg curl** (a10) — no anchor needed at the gym; ball/slider curl is the mat alternative.
- **b6** stays at 35 elbows-out (your call). **d11 overhead tricep extension reintroduced** — light cable, stop at the first tendon signal (earned by ~4 pain-free weeks).
- **PRs refreshed** from the full export (see `exercise_logs_pr_update.sql`); d5 cable-fly PR kept at cable 35×13 (machine sub not counted, per your note).

**Coaching note (in-app, Week 7):**
> Now 4 days: Mon Lower A (rehab), Tue Upper A, Thu Lower B + power/ski, Fri Upper B — Sat/Sun off. Big fix: your knee rehab (TKE, step-downs, eccentric curl) and banded hip abduction moved to the FRONT of Lower A (a6 is now warmup activation), because those skips — not pain — are what's holding you out of Phase II. Zero pain flags in weeks, nice. Confirm 32.5 on the RDL before 35. Pressing's been quiet ~4 weeks, so Friday we carefully test-drive the overhead tricep extension (d11) again — light cable, stop at the FIRST tendon signal and flag it. Sessions are re-sequenced by station: superset same-equipment moves and keep Thursday under ~75 min.

**Return from layoff → Week 3 (July 6, 2026)**

*Context:* ~2.5 weeks off (travel) after two solid training weeks (last session June 19). At this training age, strength detraining over 2–3 weeks is minimal — but tendon load tolerance and work capacity drop faster than muscle strength. Return week = ~85–90% of last working loads across the board, RIR 2–3, no PR attempts. Loads return to prior levels next week if everything is pain-free.

*Knee:* Excellent through Weeks 1–2 — zero pain flags on any knee-tagged work. Wall sits progressed 40→45s, single-leg press 70→80. Remaining issue is left-knee frontal-plane wobble on step-downs (glute med control). Monster walks (c10) finally done in the last Lower B with the yellow mini-band — keep treating c10 as a main lift.

*Left tricep tendon (still the red flag):* Wide-grip overhead pressing and overhead extensions both aggravated it; neutral grip at 40 lbs was better ("elbows felt better this week"). d11 stays OMITTED. d4 (incline press) produced a "very slight" tendon signal at 32.5 — dropped to 30 for return week, done first in the block. Reintroduce d11 only after 2+ weeks of fully pain-free pressing.

*Asymmetries (consistent pattern, matches PT assessment):* left shoulder weaker/shrugs on lateral raises (d7, d9), left hip fatigues first as stance leg (a5), left knee less stable (c7), left-side low-back soreness on kickstand RDL (a7 — cue bracing). Lead LEFT on all unilateral work.

*Plan changes shipped (equipment-driven, per Isaac's notes):* b4 → Lat Pulldown (diverging machine); b5 → Single-Arm Row (diverging low-row machine); d8 → Shoulder Press (converging machine, neutral grip — tendon-protective and matches actual equipment); b2/d1 → Band Pull-Apart / PVC Pass-Over. b6 target set to 35 lbs elbows-out per Isaac's logged request.

*Housekeeping:* `app_config` was empty in Supabase — Week 2 targets and program start date were never imported. Action: Settings → set start date (2026-06-09) and paste WEEK3_TARGETS.json. Day E (Athletic) has never been logged — Week 3 goal: run it once as a light baseline session. Cardio: restart Zone 2 bike 2–3× this week (~10% below the pre-break volume), now loggable via the new multi-modality cardio feature.

**Coaching note (in-app, Week 3):**
> Return week after 2.5 off — all loads cut ~10–15%, RIR 2–3, zero PR chasing; back to prior loads next week if pain-free. Tendon first: neutral-grip pressing only, d11 stays out, stop any set at the first tendon signal. Lead LEFT on all single-leg/arm work. Do the monster walks and the RDL — they keep getting cut. Get one baseline Athletic day in this week.

**Week 1 review → Week 2 (June 13, 2026)**

*Knee:* Progressing well, no pain flags on any knee work — single-leg press/extension, eccentric step-downs, and the 60° shallow wall sit all clean. The one issue is *control*, not pain: left knee rocks/wobbles on step-downs = a left glute-med / frontal-plane deficit. Fix is the monster walk (c10), which kept getting skipped for lack of bands.

*Main red flag — left distal triceps tendon:* pain on wide-grip overhead press and overhead tricep extension, none on pushdowns. Classic tendon-in-stretch pattern. Week 2: neutral/hammer-grip pressing only, OMIT overhead tricep extension (d11) until pain-free, keep pushdowns (and they can progress).

*Load:* PR'd nearly everything Week 1 → starting loads were conservative. Week 2 = consolidate, RIR 2–3, small bumps only where last week was easy AND pain-free. Specific per-exercise targets pushed via the new in-app Targets feature (see WEEK2_TARGETS.json).

*Action items:* buy mini-bands (unlocks band pull-apart, monster walk c10, lateral band walk e7); don't skip the RDL (c11) again; lead with the left side on all single-leg/arm work; add Zone 2 bike conditioning (see Conditioning section).

**Coaching note (in-app, Week 2):**
> Week 2 — consolidate, don't chase PRs (RIR 2–3). Priority: protect the left tricep tendon — neutral/hammer-grip pressing only, OMIT overhead tricep extension until pain-free; pushdowns are fine to push. Get mini-bands and actually do the monster walks (c10) — your left-knee wobble is a glute-med issue, not a quad one. Lead with the left side on all single-leg/arm work, and don't skip the RDL again. Cardio: 3–4 easy Zone-2 bike rides (long ride Sun + after upper days/Wed) — conversational pace, 85–95 rpm to spare the knee.

**Pre-Week 1 (June 5, 2026)**
Starting fresh. No baseline data yet. Week 1 focus: show up, establish form baselines, note any pain honestly in the exercise notes. Don't push load — let the program introduce it.

---

## Role & Expertise Standard

When reviewing Isaac's check-in, apply the knowledge and standards expected of a trainer holding the following credentials: **NSCA-CSCS** (Certified Strength and Conditioning Specialist), **ACSM-CPT**, **NSCA-CPT**, **NASM-CPT**, and **ACE-CPT**. This means evidence-based program design, sound progressive overload principles, proper periodization, injury-aware exercise selection, and the ability to modify programming based on both objective performance data and subjective feedback. Recommendations should reflect the depth of a specialist who understands both the rehab side (corrective exercise, return-to-sport progressions) and the performance side (strength, power, sport-specific conditioning for skiing and racket sports).

## Check-in Instructions for Claude

When Isaac pastes his export here, review:
1. **Knee signals** — any skipped/pain flags on knee exercises, notes mentioning pain, asymmetry in left vs right loads
2. **Progressive overload** — are weights moving? Any stalls 2+ sessions in a row?
3. **Hip abduction** — is the cable hip abduction weight tracking up? Is a6 (banded) being completed?
4. **Cardio / conditioning** — check `run_logs`. **An empty or thin table means "not logged," not "not done"** — ask for a Garmin export before drawing any conclusion. (This mistake was made on Sept 14: cardio was declared zero when 26 hours had actually been trained.) If a CSV is supplied, Settings → Import Garmin CSV loads it.
5. **Session completion, not just load** — a `done: false` set or an undone exercise at the *end* of a session is a time/structure signal, not a motivation one. If the same tail-end exercises keep dying, re-sequence rather than re-prescribe. Check duration too: sub-40-min sessions mean the plan is too long for the life.
6. **Qualitative notes** — equipment issues, fatigue, life stress, wanting to adjust. Isaac's self-diagnoses have been reliable; take them at face value.

Then produce:
- **A coaching note** (1–3 sentences) to paste into the app settings. Practical and specific — what to focus on this week.
- **Any parameter adjustments** — call out specific exercises where the target should shift.
- **A flag** if any rehab benchmarks are close to being met (Phase II readiness check).
- Update the "Coaching Notes History" section above.
