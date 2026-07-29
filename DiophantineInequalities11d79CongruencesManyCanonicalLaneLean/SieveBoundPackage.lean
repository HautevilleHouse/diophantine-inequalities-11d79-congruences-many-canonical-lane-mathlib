import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure SieveBoundPackage where
  polynomial : ℤ[X]
  modulus : ℕ
  sieveBound : ℕ
  solutionSet : Set ℤ
  boundSatisfied : (solutionSet.filter (λ x => x ≡ 0 [ZMOD modulus])).encard ≤ sieveBound

def SieveBoundClosed (S : SieveBoundPackage) : Prop :=
  S.boundSatisfied

theorem sieve_bound_closed (S : SieveBoundPackage) :
    SieveBoundClosed S := by
  exact S.boundSatisfied

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse