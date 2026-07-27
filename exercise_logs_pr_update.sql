-- Exercise PR + last-lift refresh (through 2026-07-21)
-- Rebuilt from the full workout_logs export because ~2 weeks of syncs were missed.
-- Notes honored:
--   d5  Cable Chest Fly  -> PR kept at CABLE 35x13 (Jun 19). The Jul 17 pec-fly-machine
--                          sub (90-100) is NOT logged as the cable PR, per your note.
--   b4  Lat Pulldown     -> PR from the machine (115x11, Jul 14). Jul 21 was a pull-up
--                          sub (machine busy) so it doesn't overwrite the machine PR.
--   c6  SL Leg Extension -> Jul 10 was a reverse-Nordic sub; PR/last kept at 50x12 (Jun 18).
--   b6  Chest-Supported Row -> factual PR 50x8 (Jun 18) retained, but working load is now
--                          35 elbows-out (that 50 was an elbows-in grind you chose to drop).
--   d8  Shoulder Press   -> PR = converging machine 40x10 (Jun 19, clean). The 50x6 (Jun 13)
--                          aggravated the tendon, so it is NOT used as the PR. Implement varies
--                          (machine combined-load vs DBs) — treat d8 numbers as machine reference.
-- Non-weighted/completion exercises (warmups, a6/a10/a11/a12, mobility) are left to the app.

insert into exercise_logs (ex_id, last_weight, last_reps, pr_weight, pr_reps, last_date) values
  ('a5',  '20',   '12', '20',  '13', '2026-07-21'),
  ('a7',  '32.5', '10', '32.5','10', '2026-07-21'),
  ('a8',  '45',   '10', '45',  '10', '2026-07-21'),
  ('a9',  '45',   '12', '45',  '12', '2026-07-21'),
  ('a13', '25',   '12', '25',  '12', '2026-07-21'),
  ('b4',  '115',  '11', '115', '11', '2026-07-14'),
  ('b5',  '110',  '12', '120', '10', '2026-07-21'),
  ('b6',  '35',   '10', '50',  '8',  '2026-07-21'),
  ('b7',  '55',   '15', '55',  '15', '2026-07-21'),
  ('b8',  '70',   '12', '100', '10', '2026-07-21'),
  ('b9',  '25',   '10', '25',  '12', '2026-07-21'),
  ('c5',  '80',   '10', '80',  '10', '2026-07-10'),
  ('c6',  '50',   '12', '50',  '12', '2026-06-18'),
  ('c7',  '0',    '8',  '0',   '8',  '2026-07-10'),
  ('c8',  '0',    '45', '0',   '45', '2026-07-10'),
  ('c11', '15',   '10', '15',  '10', '2026-07-10'),
  ('d4',  '32.5', '10', '35',  '11', '2026-07-17'),
  ('d5',  '35',   '13', '35',  '13', '2026-06-19'),
  ('d6',  '0',    '10', '0',   '14', '2026-07-17'),
  ('d7',  '12.5', '15', '15',  '15', '2026-07-17'),
  ('d8',  '40',   '10', '40',  '10', '2026-06-19'),
  ('d9',  '20',   '10', '20',  '10', '2026-07-17'),
  ('d10', '45',   '13', '45',  '13', '2026-07-17')
on conflict (ex_id) do update set
  last_weight = excluded.last_weight,
  last_reps   = excluded.last_reps,
  pr_weight   = excluded.pr_weight,
  pr_reps     = excluded.pr_reps,
  last_date   = excluded.last_date;
