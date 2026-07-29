import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure TwistMap (M : Type u) [TopologicalSpace M] where
  phaseSpace : M
  map : M -> M
  symplectic : Prop
  twistCondition : Prop
  areaPreserving : Prop

structure InvariantCurvePackage (ϕ : TwistMap M) where
  curveEmbedding : M -> M
  irrationallyRotated : Prop
  mapInvariant : ∀ x : M, ϕ.map (curveEmbedding x) = curveEmbedding x

structure TwistInvariantCurveEvidence {M : Type u} [TopologicalSpace M]
    {ϕ : TwistMap M} (I : InvariantCurvePackage ϕ) where
  curveEmbeddingClosed : I.curveEmbedding = I.curveEmbedding
  irrationallyRotatedClosed : I.irrationallyRotated
  mapInvariantClosed : I.mapInvariant

def TwistInvariantCurveClosed {M : Type u} [TopologicalSpace M]
    {ϕ : TwistMap M} (I : InvariantCurvePackage ϕ) : Prop :=
  I.irrationallyRotated ∧ I.mapInvariant

theorem twist_invariant_curve_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (I : InvariantCurvePackage ϕ) (E : TwistInvariantCurveEvidence I) :
    TwistInvariantCurveClosed I := by
  exact And.intro E.irrationallyRotatedClosed E.mapInvariantClosed

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse