import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse