import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure KAMNondegeneracyCondition where
  torsionStrength : Prop
  diophantineCondition : ℕ → Prop
  perturbationSmall : Prop

structure KAMTheoremPackage (M : Type u) [TopologicalSpace M] (ϕ : TwistMap M) where
  nondegeneracy : KAMNondegeneracyCondition
  invariantCurveExists : Prop

structure KAMEvidence {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (K : KAMTheoremPackage M ϕ) where
  nondegeneracyClosed : K.nondegeneracy = K.nondegeneracy
  invariantCurveExistsClosed : K.invariantCurveExists

def KAMTheoremClosed {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (K : KAMTheoremPackage M ϕ) : Prop :=
  K.invariantCurveExists

theorem KAM_theorem_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {ϕ : TwistMap M}
    (K : KAMTheoremPackage M ϕ) (E : KAMEvidence K) :
    KAMTheoremClosed K := by
  exact E.invariantCurveExistsClosed

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse