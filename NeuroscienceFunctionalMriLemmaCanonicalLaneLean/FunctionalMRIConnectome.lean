import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure FunctionalMRIConnectomePackage where
  brainRegion : Type
  connectivityMatrix : brainRegion → brainRegion → ℝ
  hemodynamicBoldSignal : brainRegion → ℝ → ℝ
  spatialSmoothing : Prop
  temporalHighpassFilter : Prop
  motionCorrection : Prop
  registrationToStandardSpace : Prop

structure FunctionalMRIConnectomeEvidence (C : FunctionalMRIConnectomePackage) where
  spatialSmoothingClosed : C.spatialSmoothing
  temporalHighpassFilterClosed : C.temporalHighpassFilter
  motionCorrectionClosed : C.motionCorrection
  registrationToStandardSpaceClosed : C.registrationToStandardSpace

def FunctionalMRIConnectomeClosed (C : FunctionalMRIConnectomePackage) : Prop :=
  C.spatialSmoothing ∧ C.temporalHighpassFilter ∧ C.motionCorrection ∧ C.registrationToStandardSpace

theorem functional_mri_connectome_closed_from_evidence (C : FunctionalMRIConnectomePackage)
    (E : FunctionalMRIConnectomeEvidence C) : FunctionalMRIConnectomeClosed C := by
  exact And.intro E.spatialSmoothingClosed
    (And.intro E.temporalHighpassFilterClosed
      (And.intro E.motionCorrectionClosed E.registrationToStandardSpaceClosed))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
