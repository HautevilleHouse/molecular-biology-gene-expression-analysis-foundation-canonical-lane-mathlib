import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneExpressionSample where
  geneId : String
  expressionLevel : Float
  condition : String
  replicate : Nat

gene expression measurement structure

structure DifferentialExpressionEvidence where
  foldChange : Float
  pValue : Float
  adjustedPValue : Float
  significant : Prop

structure ExpressionPackage where
  samples : List GeneExpressionSample
  evidence : DifferentialExpressionEvidence
  normalizationMethod : String
  statisticalTest : String

definition of differential expression analysis

theorem p_value_bound (p : Float) : 0.0 ≤ p ∧ p ≤ 1.0 := by
  constructor
  · have : p ≥ 0 := by exact ENNReal.toReal_nonneg
    exact this
  · have : p ≤ 1 := sorry
    exact this

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse