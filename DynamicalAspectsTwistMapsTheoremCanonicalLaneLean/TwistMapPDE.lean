import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.TwistMapsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure TwistMapPDEPackage where
  phaseSpace : Type u
  timeParameter : Type v
  monotoneTwistCondition : Prop
  intersectionProperty : Prop
  generatingFunction : Prop
  exactSymplectic : Prop

structure TwistMapPDEEvidence (F : TwistMapPDEPackage) where
  monotoneTwistConditionClosed : F.monotoneTwistCondition
  intersectionPropertyClosed : F.intersectionProperty
  generatingFunctionClosed : F.generatingFunction
  exactSymplecticClosed : F.exactSymplectic

def TwistMapPDEClosed (F : TwistMapPDEPackage) : Prop :=
  F.monotoneTwistCondition ∧ F.intersectionProperty ∧
  F.generatingFunction ∧ F.exactSymplectic

theorem twist_map_pde_closed_from_evidence (F : TwistMapPDEPackage)
    (E : TwistMapPDEEvidence F) : TwistMapPDEClosed F := by
  exact And.intro E.monotoneTwistConditionClosed
    (And.intro E.intersectionPropertyClosed
      (And.intro E.generatingFunctionClosed E.exactSymplecticClosed))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse