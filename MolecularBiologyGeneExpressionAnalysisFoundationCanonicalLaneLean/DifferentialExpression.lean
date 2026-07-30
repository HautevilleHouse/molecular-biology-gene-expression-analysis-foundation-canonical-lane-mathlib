import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure DifferentialExpressionResult where
  geneID : String
  logFoldChange : ℝ
  pValue : ℝ
  adjustedPValue : ℝ
  significant : Prop
  effectSize : ℝ

structure DifferentialExpressionEvidence (R : DifferentialExpressionResult) where
  significantClosed : R.significant
  adjustedPValueClosed : R.adjustedPValue ≤ 0.05

def DifferentialExpressionClosed (R : DifferentialExpressionResult) : Prop :=
  R.significant ∧ R.adjustedPValue ≤ 0.05

theorem differential_expression_closed_from_evidence
    (R : DifferentialExpressionResult) (E : DifferentialExpressionEvidence R) :
    DifferentialExpressionClosed R := by
  exact And.intro E.significantClosed E.adjustedPValueClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse