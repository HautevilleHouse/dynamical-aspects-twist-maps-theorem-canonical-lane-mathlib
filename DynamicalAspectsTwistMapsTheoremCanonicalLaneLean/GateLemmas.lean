import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse