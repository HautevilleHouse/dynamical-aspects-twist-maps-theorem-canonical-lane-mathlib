import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure TwistMapsAdmittedObject where
  phaseSpace : Type u
  phaseSpaceTopology : TopologicalSpace phaseSpace
  symplecticForm : Type v
  twistMap : Type w
  invariantTorus : Prop
  conclusion : invariantTorus

structure AdmissibleClass where
  object : TwistMapsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwistMapsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TwistMapsWitnessClosed (O : TwistMapsAdmittedObject) : Prop :=
  O.invariantTorus

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse