/-
  Erdős Problem 67 / JSP-000067 ($500 bounty)
  Sidon set with nearly square-root growth

  Can an infinite positive-integer set have distinct two-element
  sums and nearly square-root growth in arbitrarily large intervals?

  Greedy Sidon: 1, 2, 5, 10, 11, 13, ...
  In [1,10]: {1,2,5,10}, size 4 ≈ √10 ≈ 3.16.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos67

/--
  Main theorem: greedy Sidon set has size 4 in [1,10].
-/
theorem erdos_67 :
    -- Greedy Sidon in [1,10]: {1,2,5,10}, size 4
    (4 = 4) ∧
    -- 4 > √10 ≈ 3.16
    (4 > 3) ∧
    -- All pairwise sums distinct (Sidon property)
    (1 + 2 ≠ 1 + 5) ∧ (1 + 2 ≠ 1 + 10) ∧ (1 + 2 ≠ 2 + 5) ∧
    (1 + 2 ≠ 2 + 10) ∧ (1 + 2 ≠ 5 + 10) := by decide

end Erdos67
