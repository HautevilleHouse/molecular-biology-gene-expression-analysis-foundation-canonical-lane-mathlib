import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneExpressionPlatform where
  sampleCount : Nat
  geneCount : Nat
  expressionMatrix : Type u
  normalizationApplied : Prop
  batchCorrected : Prop

structure GeneExpressionEvidence (P : GeneExpressionPlatform) where
  normalizationAppliedClosed : P.normalizationApplied
  batchCorrectedClosed : P.batchCorrected

def GeneExpressionPlatformClosed (P : GeneExpressionPlatform) : Prop :=
  P.normalizationApplied ∧ P.batchCorrected

theorem gene_expression_platform_closed_from_evidence
    (P : GeneExpressionPlatform) (E : GeneExpressionEvidence P) :
    GeneExpressionPlatformClosed P := by
  exact And.intro E.normalizationAppliedClosed E.batchCorrectedClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse