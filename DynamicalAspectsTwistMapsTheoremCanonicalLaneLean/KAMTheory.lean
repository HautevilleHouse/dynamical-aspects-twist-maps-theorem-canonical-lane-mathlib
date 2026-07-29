import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.TwistMapAdmissibleClass
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure KAMPackage (A : AdmissibleClass) where
  nonresonanceCondition : Prop
  diophantineCondition : Prop
  analyticPerturbation : Prop
  invariantTorusConstruction : Prop
  convergenceProof : Prop

structure KAMEvidence {A : AdmissibleClass} (K : KAMPackage A) where
  nonresonanceConditionClosed : K.nonresonanceCondition
  diophantineConditionClosed : K.diophantineCondition
  analyticPerturbationClosed : K.analyticPerturbation
  invariantTorusConstructionClosed : K.invariantTorusConstruction
  convergenceProofClosed : K.convergenceProof

def KAMClosed {A : AdmissibleClass} (K : KAMPackage A) : Prop :=
  K.nonresonanceCondition ∧ K.diophantineCondition ∧ K.analyticPerturbation ∧ K.invariantTorusConstruction ∧ K.convergenceProof

theorem kam_closed_from_evidence {A : AdmissibleClass} (K : KAMPackage A) (E : KAMEvidence K) :
    KAMClosed K := by
  exact And.intro E.nonresonanceConditionClosed
    (And.intro E.diophantineConditionClosed
      (And.intro E.analyticPerturbationClosed
        (And.intro E.invariantTorusConstructionClosed E.convergenceProofClosed)))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse