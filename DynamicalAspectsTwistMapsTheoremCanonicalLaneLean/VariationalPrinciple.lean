import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure ActionFunctional (M : Type u) [TopologicalSpace M] (ϕ : TwistMap M) where
  action : (ℕ → M) → ℝ
  shiftInvariance : ∀ (seq : ℕ → M), action (λ n => seq (n+1)) = action seq
  lowerSemicontinuous : Prop

structure MinimizingOrbit (M : Type u) [TopologicalSpace M] {ϕ : TwistMap M}
    (S : ActionFunctional M ϕ) where
  orbit : ℕ → M
  minimizesAction : ∀ (seq : ℕ → M), S.action orbit ≤ S.action seq
  recurrenceProperties : Prop

structure VariationalEvidence {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    {S : ActionFunctional M ϕ} (O : MinimizingOrbit M S) where
  minimizesActionClosed : O.minimizesAction
  recurrencePropertiesClosed : O.recurrenceProperties

def VariationalClosed {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    {S : ActionFunctional M ϕ} (O : MinimizingOrbit M S) : Prop :=
  O.minimizesAction ∧ O.recurrenceProperties

theorem variational_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M} {S : ActionFunctional M ϕ}
    (O : MinimizingOrbit M S) (E : VariationalEvidence O) :
    VariationalClosed O := by
  exact And.intro E.minimizesActionClosed E.recurrencePropertiesClosed

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse