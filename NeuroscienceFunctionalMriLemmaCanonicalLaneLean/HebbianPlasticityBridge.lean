import canonicalLaneMathlib.AdmissibleClass

/-!
# Hebbian Learning: Admissible-class bridge for synaptic plasticity
-/

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HebbianPlasticityModel where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  learningRate : ℝ
  weight : ℝ → ℝ
  stdpCurve : ℝ → ℝ
  weightUpdateEquation : Prop
  correlationDetected : Prop
  stabilityCondition : Prop
  modelConsistent : learningRate > 0 ∧ stabilityCondition

structure HebbianPlasticityEvidence (M : HebbianPlasticityModel) where
  weightUpdateEquationClosed : M.weightUpdateEquation
  correlationDetectedClosed : M.correlationDetected
  stabilityConditionClosed : M.stabilityCondition

def HebbianPlasticityClosed (M : HebbianPlasticityModel) : Prop :=
  M.weightUpdateEquation ∧ M.correlationDetected ∧ M.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (M : HebbianPlasticityModel)
    (E : HebbianPlasticityEvidence M) : HebbianPlasticityClosed M := by
  exact And.intro E.weightUpdateEquationClosed
    (And.intro E.correlationDetectedClosed E.stabilityConditionClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse