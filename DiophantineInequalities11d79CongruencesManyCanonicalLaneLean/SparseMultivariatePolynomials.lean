import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure SparseMultivariatePolynomial (n : ℕ) where
  monomials : List (ℕ ^ n × ℤ)
  degree : ℕ
  reduceMod (p : ℕ) : Prop

def evaluate {n : ℕ} (f : SparseMultivariatePolynomial n) (x : ℤ ^ n) : ℤ :=
  (f.monomials.map (λ ⟨exp, coeff⟩ => coeff * (∏ i, x.i ^ exp.i))).sum

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse