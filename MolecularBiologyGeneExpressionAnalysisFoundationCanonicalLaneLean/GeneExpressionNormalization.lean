import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneExpressionNormalizationPackage where
  expressionMatrix : Type u
  normalizationMethod : expressionMatrix → expressionMatrix
  normalizedData : expressionMatrix
  normalizationCorrect : Prop
  normalizationCorrectClosed : normalizationCorrect

structure GeneExpressionNormalizationEvidence (G : GeneExpressionNormalizationPackage) where
  normalizationCorrectClosed : G.normalizationCorrect

def GeneExpressionNormalizationClosed (G : GeneExpressionNormalizationPackage) : Prop :=
  G.normalizationCorrect

theorem gene_expression_normalization_closed_from_evidence (G : GeneExpressionNormalizationPackage) (E : GeneExpressionNormalizationEvidence G) :
    GeneExpressionNormalizationClosed G := by
  exact E.normalizationCorrectClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse