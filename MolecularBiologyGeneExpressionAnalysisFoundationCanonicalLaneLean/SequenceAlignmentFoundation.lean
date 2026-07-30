import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure SequenceAlignment where
  query : String
  subject : String
  alignmentString : String
  score : Nat
  identityPercent : Float

alignment structure with score and identity

definition of dynamic programming alignment

structure AlignmentEvidence where
  optimalScore : Nat
  tracebackCorrect : Prop
  gapPenaltyApplied : Prop

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse