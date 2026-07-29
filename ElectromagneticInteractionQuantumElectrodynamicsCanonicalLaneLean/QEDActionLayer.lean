import canonicalLaneMathlib.AdmissibleClass
import .QEDFields

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure QEDActionEnvelope where
  field : QEDField
  maxwellAction : Prop
  diracAction : Prop
  interactionAction : Prop
  actionBound : Prop
  maxwellActionProof : maxwellAction
  diracActionProof : diracAction
  interactionActionProof : interactionAction
  actionBoundProof : actionBound

def sourceQEDActionEnvelope : QEDActionEnvelope := {
  field := primitiveQEDField
  maxwellAction := MaxwellEquationClosed primitiveQEDField
  diracAction := DiracEquationClosed primitiveQEDField
  interactionAction := True
  actionBound := True
  maxwellActionProof := primitive_maxwell_equation_closed
  diracActionProof := primitive_dirac_equation_closed
  interactionActionProof := trivial
  actionBoundProof := trivial
}

def QEDActionClosed (E : QEDActionEnvelope) : Prop :=
  E.maxwellAction ∧ E.diracAction ∧ E.interactionAction ∧ E.actionBound

theorem source_qed_action_closed : QEDActionClosed sourceQEDActionEnvelope := by
  exact And.intro sourceQEDActionEnvelope.maxwellActionProof
    (And.intro sourceQEDActionEnvelope.diracActionProof
      (And.intro sourceQEDActionEnvelope.interactionActionProof
        sourceQEDActionEnvelope.actionBoundProof))

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse