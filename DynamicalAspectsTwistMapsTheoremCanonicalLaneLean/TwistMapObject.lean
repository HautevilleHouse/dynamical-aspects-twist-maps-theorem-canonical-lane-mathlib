import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure TwistMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TwistMapAdmittedObject where
  space : TwistMapSpace
  areaPreserving : Prop
  twistCondition : Prop
  rotationalInvariant : Prop
  periodicOrbitsDense : Prop
  invariantCurvesExist : Prop
  conclusion : invariantCurvesExist

structure TwistMapEndgameState where
  object : TwistMapAdmittedObject

def TwistMapWitnessClosed (O : TwistMapAdmittedObject) : Prop :=
  O.invariantCurvesExist

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse