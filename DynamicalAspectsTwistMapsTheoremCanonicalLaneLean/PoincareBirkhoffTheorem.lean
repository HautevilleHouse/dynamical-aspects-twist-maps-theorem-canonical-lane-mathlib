import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure Annulus (M : Type u) [TopologicalSpace M] where
  innerBoundary : M
  outerBoundary : M
  area : Prop

structure TwistMapOnAnnulus (M : Type u) [TopologicalSpace M] (A : Annulus M) extends TwistMap M where
  boundaryTwist : Prop
  areaPreservingMap : Prop
  fixedPointGuarantee : Prop

structure PoincareBirkhoffFixedPoints {M : Type u} [TopologicalSpace M] {A : Annulus M}
    (ϕ : TwistMapOnAnnulus M A) where
  fixedPointsExist : Prop
  atLeastTwoFixedPoints : Prop

structure PoincareBirkhoffEvidence {M : Type u} [TopologicalSpace M] {A : Annulus M}
    {ϕ : TwistMapOnAnnulus M A} (P : PoincareBirkhoffFixedPoints ϕ) where
  fixedPointsExistClosed : P.fixedPointsExist
  atLeastTwoFixedPointsClosed : P.atLeastTwoFixedPoints

def PoincareBirkhoffClosed {M : Type u} [TopologicalSpace M] {A : Annulus M}
    {ϕ : TwistMapOnAnnulus M A} (P : PoincareBirkhoffFixedPoints ϕ) : Prop :=
  P.fixedPointsExist ∧ P.atLeastTwoFixedPoints

theorem poincare_birkhoff_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {A : Annulus M} {ϕ : TwistMapOnAnnulus M A}
    (P : PoincareBirkhoffFixedPoints ϕ) (E : PoincareBirkhoffEvidence P) :
    PoincareBirkhoffClosed P := by
  exact And.intro E.fixedPointsExistClosed E.atLeastTwoFixedPointsClosed

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse