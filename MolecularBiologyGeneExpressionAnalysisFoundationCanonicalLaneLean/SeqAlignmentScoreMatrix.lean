import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure SeqAlignmentScoreMatrixPackage where
  matchReward : Float
  mismatchPenalty : Float
  gapOpenPenalty : Float
  gapExtendPenalty : Float
  scoringReflectsBiology : Prop
  affineGapModel : Prop

def SeqAlignmentScoreMatrixClosed (S : SeqAlignmentScoreMatrixPackage) : Prop :=
  S.scoringReflectsBiology ∧ S.affineGapModel

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse