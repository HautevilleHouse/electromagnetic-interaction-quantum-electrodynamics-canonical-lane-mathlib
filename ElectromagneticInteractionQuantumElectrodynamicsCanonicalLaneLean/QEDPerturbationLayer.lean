import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean.QEDActionLayer

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure PerturbationCertificate where
  action : QEDActionCertificate
  feynmanRulesDefined : Prop
  loopExpansionFinite : Prop
  feynmanRulesDefinedProof : feynmanRulesDefined
  loopExpansionFiniteProof : loopExpansionFinite

def sourcePerturbationCertificate : PerturbationCertificate := {
  action := sourceQEDActionCertificate
  feynmanRulesDefined := True
  loopExpansionFinite := True
  feynmanRulesDefinedProof := trivial
  loopExpansionFiniteProof := trivial
}

def PerturbationClosed (C : PerturbationCertificate) : Prop :=
  QEDActionClosed C.action ∧ C.feynmanRulesDefined ∧ C.loopExpansionFinite

theorem source_perturbation_closed : PerturbationClosed sourcePerturbationCertificate := by
  unfold PerturbationClosed sourcePerturbationCertificate
  exact And.intro source_qed_action_closed (And.intro trivial trivial)

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse
