import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure FunctionalMriBoldSignal where
  neuralActivity : ℝ → ℝ
  hemodynamicResponse : ℝ → ℝ → ℝ
  boldSignal : ℝ → ℝ → ℝ
  transformation : Prop
  responsePositivity : Prop

structure FunctionalMriBoldEvidence (F : FunctionalMriBoldSignal) where
  transformationClosed : F.transformation
  responsePositivityClosed : F.responsePositivity

def FunctionalMriBoldClosed (F : FunctionalMriBoldSignal) : Prop :=
  F.transformation ∧ F.responsePositivity

theorem functional_mri_bold_closed_from_evidence (F : FunctionalMriBoldSignal) (E : FunctionalMriBoldEvidence F) :
    FunctionalMriBoldClosed F := by
  exact And.intro E.transformationClosed E.responsePositivityClosed

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
