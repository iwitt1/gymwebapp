-- Exercise PR + last-lift refresh (through 2026-07-30, the pre-Italy sessions)
-- Rebuilt from the full workout_logs export. Run in the Supabase SQL editor, then reload the app.
-- Notes honored:
--   d5  Cable Chest Fly  -> PR kept at CABLE 35x13 (Jun 19). Pec-fly-machine subs are NOT the cable PR.
--   b4  Lat Pulldown     -> PR now 120x12 (Jul 30, clean). Pull-up subs don't overwrite the machine PR.
--   b5  Single-Arm Row   -> PR weight 120 (Jul 14 top set); last 115x12 (Jul 30).
--   b6  Chest-Supported Row -> working load settled at 32.5 elbows-out; factual PR 50x8 (Jun 18) retained.
--   c6  SL Leg Extension -> PR 50x12 (Jun 18) retained; last 45x12 (Jul 30). Reverse-Nordic sub ignored.
--   c11 RDL              -> last completed 15x10 (Jul 10); the 20x10 on Jul 30 was not completed.
--   a10 Eccentric Leg Curl (was Nordic) -> now weighted: PR/last 80x7 (Jul 29).
--   a9  SL Hip Thrust    -> Jul 29 was skipped (machine N/A); last completed 45x12 (Jul 21).
--   d8  Shoulder Press   -> PR = converging machine 40x10 (Jun 19, clean); implement varies.
-- New PRs this block: b4 120x12, c5 90x10, a8 50x12, b7 60x15, a7 40x10, a10 80x7, e4 25x6, e5 25x5.

insert into exercise_logs (ex_id, last_weight, last_reps, pr_weight, pr_reps, last_date) values
  ('a5',  '20',   '12', '20',  '13', '2026-07-21'),
  ('a7',  '40',   '10', '40',  '10', '2026-07-29'),
  ('a8',  '50',   '12', '50',  '12', '2026-07-29'),
  ('a9',  '45',   '12', '45',  '12', '2026-07-21'),
  ('a10', '80',   '7',  '80',  '7',  '2026-07-29'),
  ('a13', '25',   '12', '25',  '12', '2026-07-21'),
  ('b4',  '120',  '12', '120', '12', '2026-07-30'),
  ('b5',  '115',  '12', '120', '10', '2026-07-30'),
  ('b6',  '32.5', '12', '50',  '8',  '2026-07-30'),
  ('b7',  '60',   '15', '60',  '15', '2026-07-30'),
  ('b8',  '90',   '12', '100', '10', '2026-07-30'),
  ('b9',  '20',   '12', '25',  '12', '2026-07-30'),
  ('c5',  '90',   '10', '90',  '10', '2026-07-30'),
  ('c6',  '45',   '12', '50',  '12', '2026-07-30'),
  ('c7',  '0',    '8',  '0',   '8',  '2026-07-10'),
  ('c8',  '0',    '45', '0',   '45', '2026-07-10'),
  ('c11', '15',   '10', '15',  '10', '2026-07-10'),
  ('d4',  '32.5', '10', '35',  '11', '2026-07-17'),
  ('d5',  '35',   '13', '35',  '13', '2026-06-19'),
  ('d6',  '0',    '10', '0',   '14', '2026-07-17'),
  ('d7',  '12.5', '15', '15',  '15', '2026-07-17'),
  ('d8',  '40',   '10', '40',  '10', '2026-06-19'),
  ('d9',  '20',   '10', '20',  '10', '2026-07-17'),
  ('d10', '45',   '13', '45',  '13', '2026-07-17'),
  ('e4',  '25',   '6',  '25',  '6',  '2026-07-30'),
  ('e5',  '25',   '5',  '25',  '5',  '2026-07-30')
on conflict (ex_id) do update set
  last_weight = excluded.last_weight,
  last_reps   = excluded.last_reps,
  pr_weight   = excluded.pr_weight,
  pr_reps     = excluded.pr_reps,
  last_date   = excluded.last_date;
