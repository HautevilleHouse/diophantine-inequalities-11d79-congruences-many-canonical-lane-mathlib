import canonicalLaneMathlib.AdmissibleClass
import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.SparseMultivariatePolynomials

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

theorem combinatorial_nullstellensatz (n : ℕ) (f : SparseMultivariatePolynomial n) (p : ℕ) (hp : p.Prime) :
    (∀ x : ℤ ^ n, evaluate f x ≡ 0 [ZMOD p]) → (∀ i, f.monomials.all (λ ⟨exp, coeff⟩ => exp.i ≥ p)) := by
  sorry

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse