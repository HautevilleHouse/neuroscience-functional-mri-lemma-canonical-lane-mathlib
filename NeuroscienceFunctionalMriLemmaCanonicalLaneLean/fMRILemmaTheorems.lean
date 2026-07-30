import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure fMRIBOLDModel where
  hemodynamicResponse : Type u
  neurovascularCoupling : Prop
  bloodOxygenationSignal : Prop
  deoxyhemoglobinConcentration : Prop
  cerebralBloodFlow : Prop
  cerebralBloodVolume : Prop
  balloonModel : Prop
  linearTimeInvariantApproximation : Prop
  canonicalHemodynamicResponseFunction : Prop

structure fMRIBOLDModelEvidence (F : fMRIBOLDModel) where
  neurovascularCouplingClosed : F.neurovascularCoupling
  bloodOxygenationSignalClosed : F.bloodOxygenationSignal
  deoxyhemoglobinConcentrationClosed : F.deoxyhemoglobinConcentration
  cerebralBloodFlowClosed : F.cerebralBloodFlow
  cerebralBloodVolumeClosed : F.cerebralBloodVolume
  balloonModelClosed : F.balloonModel
  linearTimeInvariantApproximationClosed : F.linearTimeInvariantApproximation
  canonicalHemodynamicResponseFunctionClosed : F.canonicalHemodynamicResponseFunction

def fMRIBOLDModelClosed (F : fMRIBOLDModel) : Prop :=
  F.neurovascularCoupling ∧ F.bloodOxygenationSignal ∧
  F.deoxyhemoglobinConcentration ∧ F.cerebralBloodFlow ∧
  F.cerebralBloodVolume ∧ F.balloonModel ∧
  F.linearTimeInvariantApproximation ∧ F.canonicalHemodynamicResponseFunction

theorem fmri_bold_model_closed_from_evidence (F : fMRIBOLDModel)
    (E : fMRIBOLDModelEvidence F) : fMRIBOLDModelClosed F := by
  exact And.intro E.neurovascularCouplingClosed
    (And.intro E.bloodOxygenationSignalClosed
      (And.intro E.deoxyhemoglobinConcentrationClosed
        (And.intro E.cerebralBloodFlowClosed
          (And.intro E.cerebralBloodVolumeClosed
            (And.intro E.balloonModelClosed
              (And.intro E.linearTimeInvariantApproximationClosed
                E.canonicalHemodynamicResponseFunctionClosed))))))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse