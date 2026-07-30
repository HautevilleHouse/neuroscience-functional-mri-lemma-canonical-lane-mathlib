import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  nodeSet : Type u
  edgeSet : Type v
  adjacencyMatrix : Type w
  graphMetrics : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  hubIdentification : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphMetricsClosed : C.graphMetrics
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubIdentificationClosed : C.hubIdentification

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphMetrics ∧ C.smallWorldProperty ∧ C.modularStructure ∧ C.hubIdentification

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C :=
  And.intro E.graphMetricsClosed
    (And.intro E.smallWorldPropertyClosed
      (And.intro E.modularStructureClosed E.hubIdentificationClosed))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
