import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HodgkinHuxleyModel (V : Type) where
  membranePotential : V -> ℝ
  potassiumConductance : V -> ℝ
  sodiumConductance : V -> ℝ
  leakConductance : V -> ℝ
  gatingVariables : V -> ℝ × ℝ × ℝ
  diffEqSatisfied : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (V : Type) (M : HodgkinHuxleyModel V) where
  diffEqSatisfiedClosed : M.diffEqSatisfied
  actionPotentialGeneratedClosed : M.actionPotentialGenerated

def HodgkinHuxleyClosed (V : Type) (M : HodgkinHuxleyModel V) : Prop :=
  M.diffEqSatisfied ∧ M.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (V : Type) (M : HodgkinHuxleyModel V) (E : HodgkinHuxleyEvidence V M) :
    HodgkinHuxleyClosed V M := by
  exact And.intro E.diffEqSatisfiedClosed E.actionPotentialGeneratedClosed

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse