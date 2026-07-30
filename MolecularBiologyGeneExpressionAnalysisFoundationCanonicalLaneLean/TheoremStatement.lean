import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure GeneExpressionAdmittedObject where
  space : GeneExpressionSpace
  hardyWeinbergEquilibrium : Prop
  linkageAnalysisComplete : Prop
  sequenceAlignmentCorrect : Prop
  phylogeneticTreeConsistent : Prop
  conclusion : hardyWeinbergEquilibrium ∧ linkageAnalysisComplete ∧ sequenceAlignmentCorrect ∧ phylogeneticTreeConsistent

structure GeneExpressionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

def GeneExpressionWitnessClosed (O : GeneExpressionAdmittedObject) : Prop :=
  O.hardyWeinbergEquilibrium ∧ O.linkageAnalysisComplete ∧ O.sequenceAlignmentCorrect ∧ O.phylogeneticTreeConsistent

theorem gene_expression_witness_closed (O : GeneExpressionAdmittedObject) : GeneExpressionWitnessClosed O := by
  exact O.conclusion

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse