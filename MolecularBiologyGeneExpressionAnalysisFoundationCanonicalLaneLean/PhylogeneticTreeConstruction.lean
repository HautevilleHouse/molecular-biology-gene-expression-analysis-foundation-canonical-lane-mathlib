import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure PhylogeneticTreeConstructionPackage where
  sequenceAlignment : Prop
  substitutionModel : Prop
  treeBuildingMethod : Prop
  bootstrapSupport : Float
  treeTopologyValid : Prop
  branchLengthsPositive : Prop

def PhylogeneticTreeConstructionClosed (P : PhylogeneticTreeConstructionPackage) : Prop :=
  P.bootstrapSupport ≥ 0.7 ∧ P.treeTopologyValid

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse