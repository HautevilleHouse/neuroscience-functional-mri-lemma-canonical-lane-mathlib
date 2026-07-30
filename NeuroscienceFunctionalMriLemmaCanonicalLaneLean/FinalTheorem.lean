import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceFunctionalMriLemmaCanonicalLaneLean.BridgeLemmas
import NeuroscienceFunctionalMriLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

def ConstrainedNeuroscienceFunctionalMriClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_functional_mri_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceFunctionalMriClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
