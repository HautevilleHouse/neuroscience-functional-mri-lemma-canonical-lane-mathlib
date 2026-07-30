import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure NeuralFieldEquations where
  activationField : Type u
  synapticKernel : Type v
  firingRateFunction : Type w
  integroDifferentialEquation : Prop
  spaceTimeScale : Prop
  stationarySolution : Prop
  bifurcationAnalysis : Prop
  patternFormation : Prop
  travelingWaveSolution : Prop

structure NeuralFieldEvidence (N : NeuralFieldEquations) where
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  spaceTimeScaleClosed : N.spaceTimeScale
  stationarySolutionClosed : N.stationarySolution
  bifurcationAnalysisClosed : N.bifurcationAnalysis
  patternFormationClosed : N.patternFormation
  travelingWaveSolutionClosed : N.travelingWaveSolution

def NeuralFieldClosed (N : NeuralFieldEquations) : Prop :=
  N.integroDifferentialEquation ∧ N.spaceTimeScale ∧ N.stationarySolution ∧
  N.bifurcationAnalysis ∧ N.patternFormation ∧ N.travelingWaveSolution

theorem neural_field_closed_from_evidence (N : NeuralFieldEquations)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.integroDifferentialEquationClosed
    (And.intro E.spaceTimeScaleClosed
      (And.intro E.stationarySolutionClosed
        (And.intro E.bifurcationAnalysisClosed
          (And.intro E.patternFormationClosed E.travelingWaveSolutionClosed))))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse