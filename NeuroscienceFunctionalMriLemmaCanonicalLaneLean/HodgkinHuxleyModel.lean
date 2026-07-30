import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakageChannel : Type x
  gateActivation : Prop
  gateInactivation : Prop
  capacitance : Prop
  injectedCurrent : Prop
  actionPotentialThreshold : Prop
  refractoryPeriod : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyEquations) where
  gateActivationClosed : H.gateActivation
  gateInactivationClosed : H.gateInactivation
  capacitanceClosed : H.capacitance
  injectedCurrentClosed : H.injectedCurrent
  actionPotentialThresholdClosed : H.actionPotentialThreshold
  refractoryPeriodClosed : H.refractoryPeriod

def HodgkinHuxleyClosed (H : HodgkinHuxleyEquations) : Prop :=
  H.gateActivation ∧ H.gateInactivation ∧ H.capacitance ∧
  H.injectedCurrent ∧ H.actionPotentialThreshold ∧ H.refractoryPeriod

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyEquations)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.gateActivationClosed
    (And.intro E.gateInactivationClosed
      (And.intro E.capacitanceClosed
        (And.intro E.injectedCurrentClosed
          (And.intro E.actionPotentialThresholdClosed E.refractoryPeriodClosed))))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse