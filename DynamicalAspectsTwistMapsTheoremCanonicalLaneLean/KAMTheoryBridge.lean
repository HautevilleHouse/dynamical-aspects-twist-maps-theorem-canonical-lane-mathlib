import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.DynamicalSystemsCoreObjects
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.StandardMapPersistence

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure KAMPackage (S : StandardMapPackage) where
  diophantineCondition : Prop
  nonresonance : Prop
  smallDenominatorEstimate : Prop
  invariantTorusExists : Prop

structure KAMEevidence (S : StandardMapPackage) (K : KAMPackage S) where
  diophantineConditionClosed : K.diophantineCondition
  nonresonanceClosed : K.nonresonance
  smallDenominatorEstimateClosed : K.smallDenominatorEstimate
  invariantTorusExistsClosed : K.invariantTorusExists

def KAMClosed (S : StandardMapPackage) (K : KAMPackage S) : Prop :=
  K.diophantineCondition ∧ K.nonresonance ∧ K.smallDenominatorEstimate ∧ K.invariantTorusExists

theorem kam_closed_from_evidence (S : StandardMapPackage) (K : KAMPackage S) (E : KAMEevidence S K) : KAMClosed S K := by
  exact And.intro E.diophantineConditionClosed (And.intro E.nonresonanceClosed (And.intro E.smallDenominatorEstimateClosed E.invariantTorusExistsClosed))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse
