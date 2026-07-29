import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure PrimitiveCongruenceManyObject where
  Modulus : ℕ
  PolynomialFamily : ℕ → ℤ[X]
  congruenceSet : ℕ → Set ℤ
  admissibleCondition : Prop
  admissibleConditionTerm : admissibleCondition

structure PrimitiveCongruencePackage (M : PrimitiveCongruenceManyObject) where
  countEstimate : ℕ → ℕ
  densityLowerBound : ℝ
  densityUpperBound : ℝ
  hasSparseSolution : Prop
  congruenceSystemSatisfied : Prop
  hasSparseSolutionTerm : hasSparseSolution
  congruenceSystemSatisfiedTerm : congruenceSystemSatisfied

def PrimitiveCongruenceManyClosed (M : PrimitiveCongruenceManyObject) (P : PrimitiveCongruencePackage M) : Prop :=
  P.hasSparseSolution ∧ P.congruenceSystemSatisfied

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse