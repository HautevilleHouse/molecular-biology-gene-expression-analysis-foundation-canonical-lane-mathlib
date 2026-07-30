import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneExpressionDifferentialAnalysisPackage where
  expressionMatrix : Type u
  sampleGroups : List String
  foldChangeThreshold : Float
  pValueAdjustmentMethod : String
  differentiallyExpressedGenes : List String
  normalizationApplied : Prop
  batchCorrectionApplied : Prop

def GeneExpressionDifferentialAnalysisClosed (G : GeneExpressionDifferentialAnalysisPackage) : Prop :=
  G.normalizationApplied ∧ G.batchCorrectionApplied

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse