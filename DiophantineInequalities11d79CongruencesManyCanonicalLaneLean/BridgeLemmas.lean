import DiophantineInequalities11d79CongruencesManyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse
