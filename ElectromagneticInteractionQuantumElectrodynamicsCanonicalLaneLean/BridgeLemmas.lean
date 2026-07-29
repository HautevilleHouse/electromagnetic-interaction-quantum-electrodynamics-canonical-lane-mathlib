import ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  let o := A.object
  exact And.intro o.sourceKeyChecked o.theoremObjectChecked

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse
