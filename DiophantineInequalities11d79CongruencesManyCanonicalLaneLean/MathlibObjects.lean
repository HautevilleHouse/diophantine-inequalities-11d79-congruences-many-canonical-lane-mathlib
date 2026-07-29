import Mathlib.Data.Polynomial.Basic
import Mathlib.Data.Nat.Prime

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure DiophantineSpace where
  polynomialRing : Type u
  primeModulus : ℕ
  primeFact : Nat.Prime primeModulus

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  systemSolvable : Prop
  boundProp : Prop
  conclusion : systemSolvable ∧ boundProp

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.systemSolvable ∧ O.boundProp

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
