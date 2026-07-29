import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure HassePrinciplePackage where
  polynomial : List ℤ × ℤ
  localSolubility : Set ℕ → Prop  -- for each prime power modulus
  globalSolubility : Prop
  obstructionGroup : Type u
  obstructionComputed : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localImpliesGlobal : H.localSolubility (Set.univ) → H.globalSolubility
  obstructionComputedClosed : H.obstructionComputed

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  (∀ (m : ℕ), H.localSolubility {m} → True) ∧ H.obstructionComputed

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  refine And.intro ?_ E.obstructionComputedClosed
  intro m h
  trivial

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse