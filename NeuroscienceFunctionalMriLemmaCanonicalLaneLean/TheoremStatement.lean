import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceFunctionalMriLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

theorem constraining_neuro_fmri_theorem :
    ∀ A : AdmissibleNeuroFMRIClass, ConstrainedNeuroFMRIClosure A := by
  intro A
  exact constrained_neuro_fmri_endgame A

end NeuroscienceFunctionalMriLemmaCanonicalLaneLean
end HautevilleHouse
