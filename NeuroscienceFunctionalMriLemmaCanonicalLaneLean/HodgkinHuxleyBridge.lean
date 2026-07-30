import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : ℝ → ℝ
  sodiumChannelGating : ℝ → ℝ
  potassiumChannelGating : ℝ → ℝ
  leakageCurrent : Prop
  actionPotentialPropagation : Prop
  synapticInputSummation : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialPropagationClosed : H.actionPotentialPropagation
  synapticInputSummationClosed : H.synapticInputSummation

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.leakageCurrent ∧ H.actionPotentialPropagation ∧ H.synapticInputSummation

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.leakageCurrentClosed
    (And.intro E.actionPotentialPropagationClosed E.synapticInputSummationClosed)

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
