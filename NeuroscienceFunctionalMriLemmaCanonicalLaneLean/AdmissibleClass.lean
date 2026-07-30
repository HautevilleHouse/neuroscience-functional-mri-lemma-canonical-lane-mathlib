import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BrainStateObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse