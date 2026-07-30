import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

/-!
# Neural Field Theory: Admissible-class bridge for continuum dynamics
-/

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure NeuralFieldModel where
  domainWidth : ℝ
  connectivityKernel : ℝ → ℝ
  firingRateFunction : ℝ → ℝ
  activity : ℝ → ℝ → ℝ
  time : ℝ
  space : ℝ
  integroDifferentialEquation : Prop
  solutionExistence : Prop
  patternFormation : Prop
  modelConsistent : domainWidth > 0 ∧ ContDiff ℝ (fun x => connectivityKernel x)

structure NeuralFieldEvidence (M : NeuralFieldModel) where
  integroDifferentialEquationClosed : M.integroDifferentialEquation
  solutionExistenceClosed : M.solutionExistence
  patternFormationClosed : M.patternFormation

def NeuralFieldClosed (M : NeuralFieldModel) : Prop :=
  M.integroDifferentialEquation ∧ M.solutionExistence ∧ M.patternFormation

theorem neural_field_closed_from_evidence (M : NeuralFieldModel)
    (E : NeuralFieldEvidence M) : NeuralFieldClosed M := by
  exact And.intro E.integroDifferentialEquationClosed
    (And.intro E.solutionExistenceClosed E.patternFormationClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse