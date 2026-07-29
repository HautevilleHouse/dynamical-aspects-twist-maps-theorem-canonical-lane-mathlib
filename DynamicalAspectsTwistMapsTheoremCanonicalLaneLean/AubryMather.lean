import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.InvariantTorus

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

structure AubryMatherPackage {F : TwistMapPDEPackage}
    {T : InvariantTorusPackage F} where
  cantorusSet : Prop
  minimalConfigurations : Prop
  actionMinimizing : Prop
  nonExistenceOfInvariantCircle : Prop

structure AubryMatherEvidence {F : TwistMapPDEPackage}
    {T : InvariantTorusPackage F} (A : AubryMatherPackage T) where
  cantorusSetClosed : A.cantorusSet
  minimalConfigurationsClosed : A.minimalConfigurations
  actionMinimizingClosed : A.actionMinimizing
  nonExistenceOfInvariantCircleClosed : A.nonExistenceOfInvariantCircle

def AubryMatherClosed {F : TwistMapPDEPackage}
    {T : InvariantTorusPackage F} (A : AubryMatherPackage T) : Prop :=
  A.cantorusSet ∧ A.minimalConfigurations ∧ A.actionMinimizing ∧ A.nonExistenceOfInvariantCircle

theorem aubry_mather_closed_from_evidence {F : TwistMapPDEPackage}
    {T : InvariantTorusPackage F} (A : AubryMatherPackage T)
    (E : AubryMatherEvidence A) : AubryMatherClosed A := by
  exact And.intro E.cantorusSetClosed
    (And.intro E.minimalConfigurationsClosed
      (And.intro E.actionMinimizingClosed E.nonExistenceOfInvariantCircleClosed))

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse