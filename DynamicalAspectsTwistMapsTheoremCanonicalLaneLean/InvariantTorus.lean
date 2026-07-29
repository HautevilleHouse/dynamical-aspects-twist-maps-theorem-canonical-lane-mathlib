import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.TwistMapPDE

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure InvariantTorusPackage {F : TwistMapPDEPackage} where
  torusDimension : ℕ
  frequencyVector : Type u
  diophantineCondition : Prop
  persistenceUnderPerturbation : Prop
  lagrangianProperty : Prop

structure InvariantTorusEvidence {F : TwistMapPDEPackage}
    (T : InvariantTorusPackage F) where
  diophantineConditionClosed : T.diophantineCondition
  persistenceUnderPerturbationClosed : T.persistenceUnderPerturbation
  lagrangianPropertyClosed : T.lagrangianProperty

def InvariantTorusClosed {F : TwistMapPDEPackage}
    (T : InvariantTorusPackage F) : Prop :=
  T.diophantineCondition ∧ T.persistenceUnderPerturbation ∧ T.lagrangianProperty

theorem invariant_torus_closed_from_evidence {F : TwistMapPDEPackage}
    (T : InvariantTorusPackage F) (E : InvariantTorusEvidence T) :
    InvariantTorusClosed T := by
  exact And.intro E.diophantineConditionClosed
    (And.intro E.persistenceUnderPerturbationClosed E.lagrangianPropertyClosed)

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse