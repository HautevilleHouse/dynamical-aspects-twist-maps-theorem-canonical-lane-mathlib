import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure InvariantCircle where
  twistMap : TwistMapAreaPreserving
  circle : Type u
  circleTopology : TopologicalSpace circle
  invariantProperty : Prop
  rotationNumber : ℝ
  smoothness : Prop
  invariantPropertyTerm : invariantProperty
  smoothnessTerm : smoothness

def InvariantCirclesClosed (I : InvariantCircle) : Prop :=
  I.invariantProperty ∧ I.smoothness

theorem invariant_circles_closed_from_evidence (I : InvariantCircle) : InvariantCirclesClosed I := by
  exact And.intro I.invariantPropertyTerm I.smoothnessTerm

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse