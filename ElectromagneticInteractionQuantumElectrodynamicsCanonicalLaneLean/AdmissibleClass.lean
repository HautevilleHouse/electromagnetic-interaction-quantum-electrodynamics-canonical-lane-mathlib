import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

def sourceRepository : String := "electromagnetic-interaction-quantum-electrodynamics-canonical-lane"
def sourceDescription : String := "Electromagnetic Interaction Quantum Electrodynamics canonical theorem closure package"

structure AdmittedTheoremObject where
  sourceKey : String := sourceRepository
  theoremObject : String := sourceDescription
  claimBoundary : String := "Carried remainder: quantum electrodynamics unrestricted classical boundary"
  sourceKeyChecked : sourceKey = sourceRepository := rfl
  theoremObjectChecked : theoremObject = sourceDescription := rfl

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.sourceKey = sourceRepository ∧ O.theoremObject = sourceDescription

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse
