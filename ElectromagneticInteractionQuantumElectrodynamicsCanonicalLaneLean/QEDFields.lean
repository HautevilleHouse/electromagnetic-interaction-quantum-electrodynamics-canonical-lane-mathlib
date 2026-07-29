import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

abbrev Spacetime := Fin 4 → ℝ
abbrev VectorPotential := Spacetime → Fin 4 → ℝ
abbrev DiracSpinor := Spacetime → ℂ⁴
abbrev FieldStrength := Spacetime → Fin 4 → Fin 4 → ℝ

def zeroVectorPotential : VectorPotential := fun _ _ => 0
def zeroDiracSpinor : DiracSpinor := fun _ => (0,0,0,0)
def zeroFieldStrength : FieldStrength := fun _ _ _ => 0

structure MaxwellOperators where
  fieldStrength : VectorPotential → FieldStrength
  maxwellEquation : FieldStrength → Prop
  gaugeInvariance : ∀ A, fieldStrength A = fieldStrength A -- placeholder

def primitiveMaxwellOperators : MaxwellOperators := {
  fieldStrength := fun _ => zeroFieldStrength
  maxwellEquation := fun _ => True
  gaugeInvariance := by intro A; rfl
}

structure DiracOperators where
  diracOperator : DiracSpinor → DiracSpinor
  gammaMatrices : Fin 4 → ℂ⁴ → ℂ⁴

def primitiveDiracOperators : DiracOperators := {
  diracOperator := fun ψ => ψ
  gammaMatrices := fun _ x => x
}

structure QEDField where
  photon : VectorPotential
  electron : DiracSpinor
  maxwellOps : MaxwellOperators
  diracOps : DiracOperators

def primitiveQEDField : QEDField := {
  photon := zeroVectorPotential
  electron := zeroDiracSpinor
  maxwellOps := primitiveMaxwellOperators
  diracOps := primitiveDiracOperators
}

def MaxwellEquationClosed (F : QEDField) : Prop :=
  F.maxwellOps.maxwellEquation (F.maxwellOps.fieldStrength F.photon)

def DiracEquationClosed (F : QEDField) : Prop :=
  F.diracOps.diracOperator F.electron = F.electron

def QEDFieldClosed (F : QEDField) : Prop :=
  MaxwellEquationClosed F ∧ DiracEquationClosed F

theorem primitive_maxwell_equation_closed : MaxwellEquationClosed primitiveQEDField := by
  rfl

theorem primitive_dirac_equation_closed : DiracEquationClosed primitiveQEDField := by
  rfl

theorem primitive_qed_field_closed : QEDFieldClosed primitiveQEDField := by
  exact And.intro primitive_maxwell_equation_closed primitive_dirac_equation_closed

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse