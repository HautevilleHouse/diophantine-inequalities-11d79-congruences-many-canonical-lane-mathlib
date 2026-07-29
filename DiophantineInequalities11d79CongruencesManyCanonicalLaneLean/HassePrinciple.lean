import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.CongruencePackage

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure HassePrinciplePackage (C : CongruencePackage) where
  localSolutions : ℕ → Prop
  globalSolutionExists : Prop
  localGlobalCompatibility : Prop
  counterexampleManaged : Prop

structure HassePrincipleEvidence {C : CongruencePackage} (H : HassePrinciplePackage C) where
  localGlobalCompatibilityClosed : H.localGlobalCompatibility
  counterexampleManagedClosed : H.counterexampleManaged

def HassePrincipleClosed {C : CongruencePackage} (H : HassePrinciplePackage C) : Prop :=
  H.localGlobalCompatibility ∧ H.counterexampleManaged

theorem hasse_principle_closed_from_evidence {C : CongruencePackage} (H : HassePrinciplePackage C)
    (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  exact And.intro E.localGlobalCompatibilityClosed E.counterexampleManagedClosed

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
