import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure SmallSolutionsPackage where
  bound : ℕ
  solutionSet : Set (ℕ → ℤ)
  sizeBoundMet : Prop
  congruenceConsistent : Prop

structure SmallSolutionsEvidence (S : SmallSolutionsPackage) where
  sizeBoundMetClosed : S.sizeBoundMet
  congruenceConsistentClosed : S.congruenceConsistent

def SmallSolutionsClosed (S : SmallSolutionsPackage) : Prop :=
  S.sizeBoundMet ∧ S.congruenceConsistent

theorem small_solutions_closed_from_evidence (S : SmallSolutionsPackage) (E : SmallSolutionsEvidence S) : SmallSolutionsClosed S := by
  exact And.intro E.sizeBoundMetClosed E.congruenceConsistentClosed

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse