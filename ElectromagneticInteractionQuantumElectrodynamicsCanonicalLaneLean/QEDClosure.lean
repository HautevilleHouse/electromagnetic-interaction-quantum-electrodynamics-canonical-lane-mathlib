import canonicalLaneMathlib.AdmissibleClass
import .QEDActionLayer

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

def qedAdmittedObject : AdmittedTheoremObject := {
  object := {
    sourceKey := "qed-canonical-lane"
    theoremObject := "QED Admissible Closure"
    claimBoundary := "Classical QED boundary carried"
  }
  localWitness := "QED field equations and action closure"
  bridgeEvidence := "source-derived Lean certificate"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def qedAdmissibleClass : AdmissibleClass := {
  object := qedAdmittedObject
  endpointSatisfied := QEDFieldClosed primitiveQEDField
  remainderRecorded := True
  gateWitness := Or.inl primitive_qed_field_closed
}

def ConstrainedQEDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qed_closure (A : AdmissibleClass) : ConstrainedQEDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem qed_admitted_closure_checked : ConstrainedQEDClosure qedAdmissibleClass := by
  exact constrained_qed_closure qedAdmissibleClass

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse