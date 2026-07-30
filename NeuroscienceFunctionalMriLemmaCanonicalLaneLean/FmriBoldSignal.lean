import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure BOLDHemodynamicModel (T : Type) where
  timePoints : T -> ℝ
  neuralActivity : T -> ℝ
  cerebralBloodFlow : T -> ℝ
  deoxyhemoglobin : T -> ℝ
  boldSignalEquation : Prop
  nonlinearCoupling : Prop
  signalPredicted : Prop

structure BOLDHemodynamicEvidence (T : Type) (M : BOLDHemodynamicModel T) where
  boldSignalEquationClosed : M.boldSignalEquation
  nonlinearCouplingClosed : M.nonlinearCoupling
  signalPredictedClosed : M.signalPredicted

def BOLDHemodynamicClosed (T : Type) (M : BOLDHemodynamicModel T) : Prop :=
  M.boldSignalEquation ∧ M.nonlinearCoupling ∧ M.signalPredicted

theorem bold_hemodynamic_closed_from_evidence (T : Type) (M : BOLDHemodynamicModel T) (E : BOLDHemodynamicEvidence T M) :
    BOLDHemodynamicClosed T M := by
  exact And.intro E.boldSignalEquationClosed (And.intro E.nonlinearCouplingClosed E.signalPredictedClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse