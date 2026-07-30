import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure NeuralFieldModel where
  spatialDomain : Type u
  fieldDynamics : (ℝ → spatialDomain → ℝ) → (ℝ → spatialDomain → ℝ)
  connectivityKernel : spatialDomain → spatialDomain → ℝ
  synapticInput : ℝ → spatialDomain → ℝ
  equation : Prop
  kernelSymmetric : Prop

structure NeuralFieldEvidence (N : NeuralFieldModel) where
  equationClosed : N.equation
  kernelSymmetricClosed : N.kernelSymmetric

def NeuralFieldClosed (N : NeuralFieldModel) : Prop :=
  N.equation ∧ N.kernelSymmetric

theorem neural_field_closed_from_evidence (N : NeuralFieldModel) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.equationClosed E.kernelSymmetricClosed

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
