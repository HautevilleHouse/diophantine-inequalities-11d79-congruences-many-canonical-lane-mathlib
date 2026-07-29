import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure HassePrinciplePackage where
  projectiveVariety : Type u
  localSolubility : Prop
  globalSolubility : Prop
  brauerManinObstruction : Prop
  principleHolds : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localSolubilityClosed : H.localSolubility
  globalSolubilityClosed : H.globalSolubility
  brauerManinObstructionClosed : H.brauerManinObstruction
  principleHoldsClosed : H.principleHolds

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.localSolubility ∧ H.globalSolubility ∧ H.brauerManinObstruction ∧ H.principleHolds

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage)
    (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  exact And.intro E.localSolubilityClosed
    (And.intro E.globalSolubilityClosed
      (And.intro E.brauerManinObstructionClosed E.principleHoldsClosed))

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse