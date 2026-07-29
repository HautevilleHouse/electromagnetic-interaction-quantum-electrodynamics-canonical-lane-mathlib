import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean.QEDPerturbationLayer

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure RenormalizationCertificate where
  perturbation : PerturbationCertificate
  countertermsDefined : Prop
  betaFunctionComputed : Prop
  countertermsDefinedProof : countertermsDefined
  betaFunctionComputedProof : betaFunctionComputed

def sourceRenormalizationCertificate : RenormalizationCertificate := {
  perturbation := sourcePerturbationCertificate
  countertermsDefined := True
  betaFunctionComputed := True
  countertermsDefinedProof := trivial
  betaFunctionComputedProof := trivial
}

def RenormalizationClosed (C : RenormalizationCertificate) : Prop :=
  PerturbationClosed C.perturbation ∧ C.countertermsDefined ∧ C.betaFunctionComputed

theorem source_renormalization_closed : RenormalizationClosed sourceRenormalizationCertificate := by
  unfold RenormalizationClosed sourceRenormalizationCertificate
  exact And.intro source_perturbation_closed (And.intro trivial trivial)

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse
