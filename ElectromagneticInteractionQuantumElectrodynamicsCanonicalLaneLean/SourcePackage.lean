import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"
def sourceFiles : List SourceFile :=
  [ { path := "scripts/compute_smatrix.py", sha256 := "sha256placeholder1", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
    { path := "scripts/renormalize.py", sha256 := "sha256placeholder2", functionCount := 4, classCount := 0, assignmentCount := 2, parseOk := true } ]

def sourceFunctions : List SourceFunctionDecl :=
  [ { file := "scripts/compute_smatrix.py", name := "amplitude", args := ["coupling", "mass"], returns := "float", doc := "Compute S-matrix amplitude.", line := 20, isAsync := false } ]

def constantSpecs : List ConstantSpec :=
  [ { group := "qed", key := "alpha_fine_structure", status := "derived_numeric", formula := "e^2/(4*pi)", sourceSection := "Appendix A", validation := "required_positive", componentKeys := ["e"] } ]

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse