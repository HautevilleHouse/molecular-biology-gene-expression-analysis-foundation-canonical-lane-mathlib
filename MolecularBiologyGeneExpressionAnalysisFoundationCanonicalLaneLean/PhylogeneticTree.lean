import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  distanceMatrix : Prop
  treeTopology : Prop
  branchLengths : Prop
  likelihood : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  distanceMatrixClosed : P.distanceMatrix
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodClosed : P.likelihood
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.distanceMatrix ∧ P.treeTopology ∧
  P.branchLengths ∧ P.likelihood ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.distanceMatrixClosed
    (And.intro E.treeTopologyClosed
      (And.intro E.branchLengthsClosed
        (And.intro E.likelihoodClosed E.bootstrapSupportClosed)))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PhylogeneticTreeClosed (A.object : PhylogeneticTreePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  match A with
  | { object := P, endpointSatisfied := ep, remainderRecorded := rem, gateWitness := gw } =>
    exact phylogenetic_tree_closed_from_evidence P (by
      exact { distanceMatrixClosed := ep, treeTopologyClosed := ep, branchLengthsClosed := ep, likelihoodClosed := ep, bootstrapSupportClosed := ep })

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedPhylogeneticTreeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_phylogenetic_tree_endgame (A : AdmissibleClass) :
    ConstrainedPhylogeneticTreeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
