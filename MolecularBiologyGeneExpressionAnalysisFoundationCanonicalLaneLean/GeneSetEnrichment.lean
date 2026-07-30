import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneSetEnrichmentAnalysis where
  geneSetName : String
  enrichmentScore : ℝ
  normalizedEnrichmentScore : ℝ
  pValue : ℝ
  falseDiscoveryRate : ℝ
  leadingEdgeGenes : List String
  enriched : Prop

structure GeneSetEnrichmentEvidence (G : GeneSetEnrichmentAnalysis) where
  enrichedClosed : G.enriched
  falseDiscoveryRateClosed : G.falseDiscoveryRate ≤ 0.25

def GeneSetEnrichmentClosed (G : GeneSetEnrichmentAnalysis) : Prop :=
  G.enriched ∧ G.falseDiscoveryRate ≤ 0.25

theorem gene_set_enrichment_closed_from_evidence
    (G : GeneSetEnrichmentAnalysis) (E : GeneSetEnrichmentEvidence G) :
    GeneSetEnrichmentClosed G := by
  exact And.intro E.enrichedClosed E.falseDiscoveryRateClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse