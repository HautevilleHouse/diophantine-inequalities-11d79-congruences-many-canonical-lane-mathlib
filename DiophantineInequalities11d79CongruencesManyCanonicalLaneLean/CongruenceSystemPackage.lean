import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure CongruenceSystemPackage where
  modulus : ℕ
  variables : ℕ
  polynomialSystem : List (List ℤ × ℤ)  -- each entry: (coefficient list, constant)
  solutionSpace : Set (ℕ → ℤ)
  admissibleBounds : Prop
  zeroSetIncluded : Prop

structure CongruenceSystemEvidence (C : CongruenceSystemPackage) where
  admissibleBoundsClosed : C.admissibleBounds
  zeroSetIncludedClosed : C.zeroSetIncluded

def CongruenceSystemClosed (C : CongruenceSystemPackage) : Prop :=
  C.admissibleBounds ∧ C.zeroSetIncluded

theorem congruence_system_closed_from_evidence (C : CongruenceSystemPackage) (E : CongruenceSystemEvidence C) : CongruenceSystemClosed C := by
  exact And.intro E.admissibleBoundsClosed E.zeroSetIncludedClosed

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse