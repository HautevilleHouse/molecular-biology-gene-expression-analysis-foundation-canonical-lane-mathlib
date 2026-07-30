import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesTree : Type u
  distanceMatrix : speciesTree → speciesTree → ℝ × ℝ
  phylogeneticConsistency : Prop
  phylogeneticConsistencyClosed : phylogeneticConsistency

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  phylogeneticConsistencyClosed : P.phylogeneticConsistency

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.phylogeneticConsistency

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact E.phylogeneticConsistencyClosed

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse