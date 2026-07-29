import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsTwistMapsTheoremCanonicalLaneLean.TwistMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TwistMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsTwistMapsTheoremCanonicalLaneLean
end HautevilleHouse