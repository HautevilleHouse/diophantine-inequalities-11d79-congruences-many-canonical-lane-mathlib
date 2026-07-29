import canonicalLaneMathlib.AdmissibleClass
import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.CongruenceEquivalence

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure SubstitutionStep (n : ℕ) where
  variableIndex : Fin n
  linearForm : ℤ ^ n → ℤ

def SubstitutionReduction (n : ℕ) (f : SparseMultivariatePolynomial n) (steps : List (SubstitutionStep n)) : SparseMultivariatePolynomial n :=
  -- placeholder
  f

def DegreeDrop (n : ℕ) (f : SparseMultivariatePolynomial n) (p : ℕ) : Prop :=
  f.degree < p

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse