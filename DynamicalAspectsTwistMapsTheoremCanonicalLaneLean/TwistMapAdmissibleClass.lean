import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure TwistMapSystem where
  annulus : Type u
  annulusTopology : TopologicalSpace annulus
  preservingMap : annulus → annulus
  twistCondition : Prop
  areaPreserving : Prop

structure TwistMapAdmittedObject where
  system : TwistMapSystem
  exactSymplectic : Prop
  monotoneTwist : Prop
  invariantCircles : Prop
  conclusion : invariantCircles

def TwistMapWitnessClosed (O : TwistMapAdmittedObject) : Prop :=
  O.invariantCircles

structure AdmissibleClass where
  object : TwistMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwistMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse