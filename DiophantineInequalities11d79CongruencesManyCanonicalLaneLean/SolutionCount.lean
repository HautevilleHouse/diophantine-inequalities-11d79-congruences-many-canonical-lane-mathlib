import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.CongruencePackage

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure SolutionCountPackage (C : CongruencePackage) where
  solutionBound : ℕ
  solutionCount : ℕ
  boundExceeded : Prop

def SolutionCountBoundClosed (S : SolutionCountPackage C) : Prop :=
  S.boundExceeded

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
