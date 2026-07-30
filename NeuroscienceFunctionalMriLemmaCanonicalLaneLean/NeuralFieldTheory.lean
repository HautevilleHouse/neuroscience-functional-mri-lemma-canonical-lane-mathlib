import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  neuralField : Type
  fieldEquation : neuralField → neuralField → Prop
  connectivityKernel : neuralField → neuralField → ℝ
  stationarySolution : Prop
  bifurcationAnalysis : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  stationarySolutionClosed : N.stationarySolution
  bifurcationAnalysisClosed : N.bifurcationAnalysis
  patternFormationClosed : N.patternFormation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.stationarySolution ∧ N.bifurcationAnalysis ∧ N.patternFormation

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.stationarySolutionClosed
    (And.intro E.bifurcationAnalysisClosed E.patternFormationClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
