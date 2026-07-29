import Mathlib.Data.Polynomial.Basic

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure PolynomialRingPackage where
  coefficientRing : Type u
  indeterminates : ℕ
  polynomialList : List (Polynomial (ℤ))
  degreeBounds : Prop

def PolynomialRingClosed (P : PolynomialRingPackage) : Prop :=
  P.degreeBounds

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
