import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure ConnectomeGraph (V : Type) where
  vertices : V -> Prop
  edges : V -> V -> Prop
  edgeWeight : V -> V -> ℝ
  graphLaplacian : Prop
  spectralPartition : Prop
  modularityMeasure : Prop

structure ConnectomeGraphEvidence (V : Type) (G : ConnectomeGraph V) where
  graphLaplacianClosed : G.graphLaplacian
  spectralPartitionClosed : G.spectralPartition
  modularityMeasureClosed : G.modularityMeasure

def ConnectomeGraphClosed (V : Type) (G : ConnectomeGraph V) : Prop :=
  G.graphLaplacian ∧ G.spectralPartition ∧ G.modularityMeasure

theorem connectome_graph_closed_from_evidence (V : Type) (G : ConnectomeGraph V) (E : ConnectomeGraphEvidence V G) :
    ConnectomeGraphClosed V G := by
  exact And.intro E.graphLaplacianClosed (And.intro E.spectralPartitionClosed E.modularityMeasureClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse