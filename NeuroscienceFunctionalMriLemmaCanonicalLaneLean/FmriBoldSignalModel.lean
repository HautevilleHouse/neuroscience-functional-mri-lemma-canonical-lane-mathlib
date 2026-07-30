import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure FmriBoldSignalPackage where
  cerebralBloodFlow : Type u
  cerebralBloodVolume : Type v
  deoxyhemoglobinContent : Type w
  balloonModel : Prop
  windkesselDynamics : Prop
  boldResponseFunction : Prop
  neurovascularCoupling : Prop

structure FmriBoldSignalEvidence (F : FmriBoldSignalPackage) where
  balloonModelClosed : F.balloonModel
  windkesselDynamicsClosed : F.windkesselDynamics
  boldResponseFunctionClosed : F.boldResponseFunction
  neurovascularCouplingClosed : F.neurovascularCoupling

def FmriBoldSignalClosed (F : FmriBoldSignalPackage) : Prop :=
  F.balloonModel ∧ F.windkesselDynamics ∧ F.boldResponseFunction ∧ F.neurovascularCoupling

theorem fmri_bold_signal_closed_from_evidence (F : FmriBoldSignalPackage)
    (E : FmriBoldSignalEvidence F) : FmriBoldSignalClosed F :=
  And.intro E.balloonModelClosed
    (And.intro E.windkesselDynamicsClosed
      (And.intro E.boldResponseFunctionClosed E.neurovascularCouplingClosed))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
