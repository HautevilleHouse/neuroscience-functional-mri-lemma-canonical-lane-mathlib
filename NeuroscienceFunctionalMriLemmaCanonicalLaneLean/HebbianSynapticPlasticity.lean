import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HebbianPlasticityModel (N : Type) where
  presynapticActivity : N -> ℝ
  postsynapticActivity : N -> ℝ
  synapticWeight : N -> ℝ
  learningRate : ℝ
  hebbianUpdate : Prop
  weightChangeComputed : Prop

structure HebbianPlasticityEvidence (N : Type) (M : HebbianPlasticityModel N) where
  hebbianUpdateClosed : M.hebbianUpdate
  weightChangeComputedClosed : M.weightChangeComputed

def HebbianPlasticityClosed (N : Type) (M : HebbianPlasticityModel N) : Prop :=
  M.hebbianUpdate ∧ M.weightChangeComputed

theorem hebbian_plasticity_closed_from_evidence (N : Type) (M : HebbianPlasticityModel N) (E : HebbianPlasticityEvidence N M) :
    HebbianPlasticityClosed N M := by
  exact And.intro E.hebbianUpdateClosed E.weightChangeComputedClosed

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse