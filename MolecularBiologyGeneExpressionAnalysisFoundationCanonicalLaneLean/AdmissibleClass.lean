import MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean.SeqAlignmentScoreMatrix

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : BiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure BiologyAdmittedObject where
  seqAlignmentScoreMatrixPackage : SeqAlignmentScoreMatrixPackage
  hardyWeinbergPackage : HardyWeinbergEquilibriumPackage
  linkageAnalysisPackage : LinkageAnalysisLODScorePackage
  phylogeneticTreePackage : PhylogeneticTreeConstructionPackage
  differentialExpressionPackage : GeneExpressionDifferentialAnalysisPackage
  conclusion : Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BiologyWitnessClosed (O : BiologyAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse