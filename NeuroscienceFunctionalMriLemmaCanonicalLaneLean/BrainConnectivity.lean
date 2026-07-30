import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure BrainConnectivity where
  regionCount : ℕ
  adjacencyMatrix : Matrix (Fin regionCount) (Fin regionCount) ℝ
  connectionWeights : Prop
  symmetricMat : adjacencyMatrix = transpose adjacencyMatrix

structure BrainConnectivityEvidence (B : BrainConnectivity) where
  connectionWeightsClosed : B.connectionWeights
  symmetricMatClosed : B.symmetricMat

def BrainConnectivityClosed (B : BrainConnectivity) : Prop :=
  B.connectionWeights ∧ B.symmetricMat

theorem brain_connectivity_closed_from_evidence (B : BrainConnectivity) (E : BrainConnectivityEvidence B) :
    BrainConnectivityClosed B := by
  exact And.intro E.connectionWeightsClosed E.symmetricMatClosed

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
