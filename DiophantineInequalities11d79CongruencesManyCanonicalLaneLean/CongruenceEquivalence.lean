import canonicalLaneMathlib.AdmissibleClass
import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.SparseMultivariatePolynomials

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure CongruenceEquivalence (n : ℕ) where
  modulus : ℕ
  residue : ℤ ^ n

def congruentMod {n : ℕ} (a b : ℤ ^ n) (p : ℕ) : Prop :=
  ∀ i, a.i ≡ b.i [ZMOD p]

def equivalenceClass {n : ℕ} (x : ℤ ^ n) (p : ℕ) : Set (ℤ ^ n) :=
  {y | congruentMod x y p}

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse