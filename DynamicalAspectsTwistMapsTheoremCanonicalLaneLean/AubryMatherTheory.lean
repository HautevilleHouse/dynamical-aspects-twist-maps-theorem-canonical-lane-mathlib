import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.TwistMapAdmissibleClass
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure AubryMatherPackage (A : AdmissibleClass) where
  minimalConfigurations : Prop
  rotationNumberSet : Prop
  invariantMeasures : Prop
  actionMinimizing : Prop
  AubrySetDefinition : Prop

structure AubryMatherEvidence {A : AdmissibleClass} (AM : AubryMatherPackage A) where
  minimalConfigurationsClosed : AM.minimalConfigurations
  rotationNumberSetClosed : AM.rotationNumberSet
  invariantMeasuresClosed : AM.invariantMeasures
  actionMinimizingClosed : AM.actionMinimizing
  AubrySetDefinitionClosed : AM.AubrySetDefinition

def AubryMatherClosed {A : AdmissibleClass} (AM : AubryMatherPackage A) : Prop :=
  AM.minimalConfigurations ∧ AM.rotationNumberSet ∧ AM.invariantMeasures ∧ AM.actionMinimizing ∧ AM.AubrySetDefinition

theorem aubry_mather_closed_from_evidence {A : AdmissibleClass} (AM : AubryMatherPackage A) (E : AubryMatherEvidence AM) :
    AubryMatherClosed AM := by
  exact And.intro E.minimalConfigurationsClosed
    (And.intro E.rotationNumberSetClosed
      (And.intro E.invariantMeasuresClosed
        (And.intro E.actionMinimizingClosed E.AubrySetDefinitionClosed)))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse