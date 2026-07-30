import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure LinkageModel where
  markerCount : Nat
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageSignificant : Prop
  pedigreeStructure : Type u
  markerMap : Type v

structure LinkageEvidence (L : LinkageModel) where
  recombinationFractionClosed : L.recombinationFraction = 0.5
  linkageSignificantClosed : L.linkageSignificant

def LinkageClosed (L : LinkageModel) : Prop :=
  L.recombinationFraction = 0.5 ∧ L.linkageSignificant

theorem linkage_closed_from_evidence
    (L : LinkageModel) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.recombinationFractionClosed E.linkageSignificantClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse