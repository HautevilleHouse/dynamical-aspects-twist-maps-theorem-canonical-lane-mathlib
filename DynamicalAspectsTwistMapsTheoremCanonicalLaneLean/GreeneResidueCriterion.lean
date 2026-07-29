import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.DynamicalSystemsCoreObjects
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.StandardMapPersistence

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure GreeneCriterionPackage (S : StandardMapPackage) where
  residueMethod : Prop
  periodicOrbitCount : Prop
  stabilityIndicator : Prop
  thresholdResidue : ℝ

structure GreeneCriterionEvidence (S : StandardMapPackage) (G : GreeneCriterionPackage S) where
  residueMethodClosed : G.residueMethod
  periodicOrbitCountClosed : G.periodicOrbitCount
  stabilityIndicatorClosed : G.stabilityIndicator
  thresholdResidueClosed : G.thresholdResidue

def GreeneCriterionClosed (S : StandardMapPackage) (G : GreeneCriterionPackage S) : Prop :=
  G.residueMethod ∧ G.periodicOrbitCount ∧ G.stabilityIndicator ∧ G.thresholdResidue

theorem greene_criterion_closed_from_evidence (S : StandardMapPackage) (G : GreeneCriterionPackage S) (E : GreeneCriterionEvidence S G) : GreeneCriterionClosed S G := by
  exact And.intro E.residueMethodClosed (And.intro E.periodicOrbitCountClosed (And.intro E.stabilityIndicatorClosed E.thresholdResidueClosed))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse
