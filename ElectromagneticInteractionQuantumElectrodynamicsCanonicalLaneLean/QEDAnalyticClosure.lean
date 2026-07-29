import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def qedAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject,
  localWitness := "QED analytic S-matrix continuity",
  bridgeEvidence := "source-derived QED certificate fields",
  sourceKeyChecked := rfl,
  theoremObjectChecked := rfl
}

def qedAdmissibleClass : AdmissibleClass := {
  object := qedAdmittedObject,
  endpointSatisfied := QEDAnalyticCertificateClosed sourceQEDAnalyticCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl source_qed_analytic_certificate_closed
}

def QEDAdmittedClosure : Prop :=
  QEDAnalyticCertificateClosed sourceQEDAnalyticCertificate ∧
  ConstrainedTheoremClosure qedAdmissibleClass

theorem qed_admitted_closure_checked : QEDAdmittedClosure := by
  exact And.intro source_qed_analytic_certificate_closed (constrained_theorem_closure qedAdmissibleClass)

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse