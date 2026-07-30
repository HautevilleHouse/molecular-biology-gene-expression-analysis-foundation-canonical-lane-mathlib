import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure LinkageAnalysisLODScorePackage where
  recombinationFraction : Float
  thetaMax : Float
  lodScore : Float
  linkageSignificant : Prop
  exactTestPValue : Float
  pedigreeStructureValid : Prop

def LinkageAnalysisLODScoreClosed (L : LinkageAnalysisLODScorePackage) : Prop :=
  L.linkageSignificant ∧ L.pedigreeStructureValid

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse