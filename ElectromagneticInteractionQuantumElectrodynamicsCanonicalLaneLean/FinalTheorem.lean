import ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

def ConstrainedQEDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qed_endgame (A : AdmissibleClass) :
    ConstrainedQEDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse
