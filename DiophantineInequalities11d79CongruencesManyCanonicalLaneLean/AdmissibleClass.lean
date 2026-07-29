import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
