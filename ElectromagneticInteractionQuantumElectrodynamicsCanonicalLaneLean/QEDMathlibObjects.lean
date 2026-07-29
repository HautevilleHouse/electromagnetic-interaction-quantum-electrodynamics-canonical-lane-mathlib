import canonicalLaneMathlib.AdmissibleClass
import Mathlib

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure QEDTheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure QEDAdmittedTheoremObject where
  object : QEDTheoremSpecificObject
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure QEDClosureState where
  object : QEDAdmittedTheoremObject

def qedTheoremSpecificObject : QEDTheoremSpecificObject := {
  sourceKey := sourceRepository
  theoremObject := sourceDescription
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def QEDNativeBridgeClosed (O : QEDAdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧ O.object.theoremObject = sourceDescription

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse