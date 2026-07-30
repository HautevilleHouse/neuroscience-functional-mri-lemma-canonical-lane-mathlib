import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Matrix

/-!
# Connectomics: Admissible-class bridge for functional connectivity
-/

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure FunctionalConnectivityModel where
  regionCount : ℕ
  roiActivity : Matrix (Fin regionCount) (Fin regionCount) ℝ → ℝ
  correlationMatrix : Matrix (Fin regionCount) (Fin regionCount) ℝ
  threshold : ℝ
  graphLaplacian : Matrix (Fin regionCount) (Fin regionCount) ℝ
  connectivityComputed : Prop
  modularityDetected : Prop
  smallWorldProperty : Prop
  modelConsistent : regionCount > 1 ∧ threshold > 0

structure FunctionalConnectivityEvidence (M : FunctionalConnectivityModel) where
  connectivityComputedClosed : M.connectivityComputed
  modularityDetectedClosed : M.modularityDetected
  smallWorldPropertyClosed : M.smallWorldProperty

def FunctionalConnectivityClosed (M : FunctionalConnectivityModel) : Prop :=
  M.connectivityComputed ∧ M.modularityDetected ∧ M.smallWorldProperty

theorem functional_connectivity_closed_from_evidence (M : FunctionalConnectivityModel)
    (E : FunctionalConnectivityEvidence M) : FunctionalConnectivityClosed M := by
  exact And.intro E.connectivityComputedClosed
    (And.intro E.modularityDetectedClosed E.smallWorldPropertyClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse