import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure DynamicalConsequencesPackage (M : Type u) [TopologicalSpace M] (ϕ : TwistMap M) where
  rotationSet : Set ℝ
  rotationSetClosed : Prop
  lyapunovExponentsStable : Prop
  topologicalEntropyPositive : Prop
  heteroclinicConnections : Prop

structure DynamicalConsequencesEvidence {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (D : DynamicalConsequencesPackage M ϕ) where
  rotationSetClosedClosed : D.rotationSetClosed
  lyapunovExponentsStableClosed : D.lyapunovExponentsStable
  topologicalEntropyPositiveClosed : D.topologicalEntropyPositive
  heteroclinicConnectionsClosed : D.heteroclinicConnections

def DynamicalConsequencesClosed {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (D : DynamicalConsequencesPackage M ϕ) : Prop :=
  D.rotationSetClosed ∧ D.lyapunovExponentsStable ∧ D.topologicalEntropyPositive ∧ D.heteroclinicConnections

theorem dynamical_consequences_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (D : DynamicalConsequencesPackage M ϕ) (E : DynamicalConsequencesEvidence D) :
    DynamicalConsequencesClosed D := by
  exact And.intro E.rotationSetClosedClosed
    (And.intro E.lyapunovExponentsStableClosed
      (And.intro E.topologicalEntropyPositiveClosed E.heteroclinicConnectionsClosed))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse