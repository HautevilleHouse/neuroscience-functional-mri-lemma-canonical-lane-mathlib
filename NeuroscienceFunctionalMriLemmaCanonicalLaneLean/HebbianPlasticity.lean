import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure HebbianLearningRule where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  correlationRule : Prop
  weightUpdateEquation : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop
  homeostasisConstraint : Prop
  saturationBound : Prop

structure HebbianPlasticityEvidence (H : HebbianLearningRule) where
  correlationRuleClosed : H.correlationRule
  weightUpdateEquationClosed : H.weightUpdateEquation
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence
  homeostasisConstraintClosed : H.homeostasisConstraint
  saturationBoundClosed : H.saturationBound

def HebbianPlasticityClosed (H : HebbianLearningRule) : Prop :=
  H.correlationRule ∧ H.weightUpdateEquation ∧ H.longTermPotentiation ∧
  H.longTermDepression ∧ H.spikeTimingDependence ∧ H.homeostasisConstraint ∧ H.saturationBound

theorem hebbian_plasticity_closed_from_evidence (H : HebbianLearningRule)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.correlationRuleClosed
    (And.intro E.weightUpdateEquationClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed
          (And.intro E.spikeTimingDependenceClosed
            (And.intro E.homeostasisConstraintClosed E.saturationBoundClosed)))))

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse