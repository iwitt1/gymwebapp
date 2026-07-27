# Isaac's Training Plan

**Living document — updated at each Claude check-in.**
Last updated: July 27, 2026 (Week 7 check-in → move to 4 days/week + session re-sequencing)

---

## Where You Are

**Phase I — Foundation**
Program start: June 9, 2026 (Week 1)
Goal phase duration: 8–10 weeks

Primary objectives this phase:
- Eliminate PFPS/patellar tendinitis symptoms under load
- Raise quad torque-to-bodyweight from ~2.3 → 3.0 Nm/kg (PT benchmark)
- Correct left hip abduction deficit (single-leg stability under load)
- Build an aerobic/structural base before introducing sport-specific power

**Ski season target: November 1, 2026** (~21 weeks from program start)

---

## Phase I Structure

### Weekly split (default — 4 days, as of Week 7 / Jul 27, 2026)
| Day | Session | Focus |
|-----|---------|-------|
| Monday | Lower A | Posterior chain, hip abduction, knee rehab (re-sequenced to the front) |
| Tuesday | Upper A | Pull, rear delt, shoulder health |
| Wednesday | Active recovery | Easy bike or walk, mobility — log in app |
| Thursday | Lower B + Power | Quad/knee strength **merged with** tempo-contrast power + lateral stability (ski prep) |
| Friday | Upper B | Push, chest, shoulder development |
| Sat / Sun | Rest / Active | Off, or an easy bike/walk — log if active |

**Change from the original 5-day split:** the standalone Saturday Athletic day (never trained in 7 weeks) was dissolved. Its ski-relevant pieces — tempo-contrast power (goblet squat, DB deadlift), lateral step-up, lateral band walk, balance reach, Copenhagen — were folded into Thursday. The remaining Athletic movements (med ball slam, Pallof, stir-the-pot, wall sit, reverse lunge, monster walk) live in Thursday's "Optional / rotate" block so nothing is lost.

**Session re-sequencing (all days):** exercises are now grouped by equipment station so setup happens once — supersets are marked in the app cues ("work X + Y in together"): cable rack, box/step, DBs+bench, leg machines. Mat/floor work is clustered (Lower A opens and closes on the mat; a6 banded abduction moved into the warmup so it stops getting skipped). Nordic curl swapped for an accentuated-eccentric machine leg curl (no anchor needed at the gym).

Schedule is flexible week-to-week — use the swap feature in the app if travel or life requires it. (The Athletic day was fully dissolved into Thursday, so it's no longer a separate swap option — if a dedicated 5th day is ever wanted, re-add `dayE`.)

### Phase I progressive overload targets
- **Weeks 1–2**: Establish baseline weights. Prioritize form and pain-free range over load.
- **Weeks 3–4**: Add 5 lbs where sets feel easy (RPE 6–7 → target RPE 8). Knee exercises: don't chase load — chase range and quality.
- **Weeks 5–6**: Progressive range targets hit on key rehab exercises (Nordic, Step-Down). Reassess hip abduction symmetry.
- **Weeks 7–8**: Evaluate for deload. If consistent, consider Phase II readiness.

### Deload (Week 9 or as needed)
Drop all set volumes by ~40%. No new PRs — just move. Then assess Phase II.

---

## Key Rehab Benchmarks (Phase I → II gate)

Before progressing to Phase II (more loaded, some impact work):
- [ ] Step-Down: 3×8/side pain-free at full height (8–10" box) — *inconsistent; keeps getting skipped, now moved to front of Lower A*
- [ ] Nordic / eccentric hamstring: controlled full-range lowering — *swapped to accentuated-eccentric machine curl for equipment; rebuild range*
- [x] Single-Leg Leg Press: 4×10/side pain-free — **met** (80×10 clean, Jul 10)
- [ ] Hip Abduction: left ≥ right symmetry — *not yet; left still fatigues first as stance leg*
- [x] 4+ consecutive weeks, no knee **pain** flags — **met** (skips have been time/fatigue, not pain)

**Gate read (Week 7):** the blockers are no longer pain — they're the rehab work (step-downs, eccentric curl, banded abduction) getting cut at the end of long sessions, and left/right hip symmetry. The 4-day restructure exists to *guarantee* that work happens (front-loaded + supersetted), which is the real path to the Phase II gate.

---

## Conditioning / Stamina (added Week 2)

Knee isn't ready for impact, so we build the aerobic base on the **bike** (zero/low impact) plus the pool as a backup. Isaac already rides real distance (25 mi on Jun 12), so this is base-*building*, not starting from zero.

- **Modality:** mostly stationary/road bike. Garmin auto HR zones.
- **Intensity:** strict **Zone 2** for the base block — conversational pace, nasal-breathing possible, RPE 3–4/10. If HR drifts into Zone 3, ease off. Hold pure Zone 2 for ~2–3 weeks before introducing any intervals.
- **Knee protection on the bike:** high cadence (85–95 rpm), saddle high enough that the knee stays only slightly bent at the bottom, no grinding big gears / steep climbs yet.
- **Frequency (Week 2):** 3–4 sessions — one long ride (Sun, 75–90 min), short easy spins after upper days (Tue/Fri, 25–30 min), and a steady 45 min on Wed.
- **Progression:** keep weekly volume increases sane (~10% guideline). Recomposition benefit comes from consistency in Zone 2, not from going harder.

---

## Running Integration

Start conservatively. 10% week-over-week rule enforced by the app.
- Weeks 1–4: Optional easy runs only. Max 2 miles/run, 1–2×/week if knee is quiet.
- Weeks 5–8: Can introduce up to 3×/week if symptom-free. Track in app.
- Phase II: structured run progression alongside training if knee benchmarks are met.

---

## Coaching Notes History

*(Newest at top — this section updated at each check-in)*

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
4. **Running volume** — is the 10% ramp being respected? Any knee correlation?
5. **Qualitative notes** — equipment issues, fatigue, life stress, wanting to adjust

Then produce:
- **A coaching note** (1–3 sentences) to paste into the app settings. Practical and specific — what to focus on this week.
- **Any parameter adjustments** — call out specific exercises where the target should shift.
- **A flag** if any rehab benchmarks are close to being met (Phase II readiness check).
- Update the "Coaching Notes History" section above.
