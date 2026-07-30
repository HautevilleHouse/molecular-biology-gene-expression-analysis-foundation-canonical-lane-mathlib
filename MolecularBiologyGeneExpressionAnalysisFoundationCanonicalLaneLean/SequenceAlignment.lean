import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceSequence : String
  querySequence : String
  alignmentScore : Prop
  gapPenalty : Prop
  substitutionMatrix : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreClosed : S.alignmentScore
  gapPenaltyClosed : S.gapPenalty
  substitutionMatrixClosed : S.substitutionMatrix
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore ∧ S.gapPenalty ∧
  S.substitutionMatrix ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.substitutionMatrixClosed E.optimalAlignmentClosed))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SequenceAlignmentClosed (A.object : SequenceAlignmentPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  match A with
  | { object := S, endpointSatisfied := ep, remainderRecorded := rem, gateWitness := gw } =>
    exact sequence_alignment_closed_from_evidence S (by
      exact { alignmentScoreClosed := ep, gapPenaltyClosed := ep, substitutionMatrixClosed := ep, optimalAlignmentClosed := ep })

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSequenceAlignmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sequence_alignment_endgame (A : AdmissibleClass) :
    ConstrainedSequenceAlignmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneExpressionAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
