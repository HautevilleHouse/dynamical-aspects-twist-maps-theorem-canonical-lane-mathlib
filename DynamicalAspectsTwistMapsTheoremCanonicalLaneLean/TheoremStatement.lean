import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure AdmittedObject where
  twistMap : Type u
  dynamicProperties : Prop
  invariantCurve : Prop
  conclusion : TwistMapsWitnessClosed this

def TwistMapsWitnessClosed (O : AdmittedObject) : Prop :=
  O.invariantCurve

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse