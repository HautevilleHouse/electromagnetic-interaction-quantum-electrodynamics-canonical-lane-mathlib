import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [ { file := "scripts/compute_smatrix.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
    { file := "scripts/compute_smatrix.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
    { file := "scripts/compute_smatrix.py", kind := "import", module := "scipy.linalg", name := "", alias := "", level := 0 },
    { file := "scripts/renormalize.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
    { file := "scripts/renormalize.py", kind := "import", module := "sympy", name := "", alias := "sp", level := 0 },
    { file := "scripts/renormalize.py", kind := "import", module := "math", name := "", alias := "", level := 0 } ]

def sourcePathDependencies : List SourcePathDependency :=
  [ { file := "scripts/compute_smatrix.py", name := "DEFAULT_COUPLING", path := "artifacts/coupling_constant.json", role := "artifact", line := 10 },
    { file := "scripts/renormalize.py", name := "DEFAULT_MASS", path := "artifacts/electron_mass.json", role := "artifact", line := 12 } ]

end ElectromagneticInteractionQuantumElectrodynamicsCanonicalLaneLean
end HautevilleHouse