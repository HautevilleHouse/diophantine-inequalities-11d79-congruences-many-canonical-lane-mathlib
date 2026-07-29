import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyCanonicalLaneLean

inductive CongruenceFormulaExpr where
  | var (name : String)
  | num (value : ℕ)
  | add (lhs rhs : CongruenceFormulaExpr)
  | mul (lhs rhs : CongruenceFormulaExpr)
  | mod (arg : CongruenceFormulaExpr) (m : ℕ)
  | eq (lhs rhs : CongruenceFormulaExpr)
deriving Repr, DecidableEq

structure CongruenceComponent where
  key : String
  value : ℕ
deriving Repr, DecidableEq

structure SourceCongruenceModel where
  group : String
  key : String
  status : String
  formula : String
  expr : CongruenceFormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List CongruenceComponent
deriving Repr, DecidableEq

def sourceCongruenceModels : List SourceCongruenceModel :=
  [{ group := "constants", key := "k0", status := "derived_numeric", formula := "a0", expr := CongruenceFormulaExpr.var "a0", parseStatus := "parsed", sourceSection := "Section 3.2", notes := "Base modulus", validation := "required_positive", componentKeys := ["a0"], components := [{ key := "a0", value := 2 }] },
   { group := "constants", key := "theta", status := "derived_numeric", formula := "c1 * m0 + c2", expr := CongruenceFormulaExpr.add (CongruenceFormulaExpr.mul (CongruenceFormulaExpr.var "c1") (CongruenceFormulaExpr.var "m0")) (CongruenceFormulaExpr.var "c2"), parseStatus := "parsed", sourceSection := "Section 4.1", notes := "Density exponent", validation := "required_positive", componentKeys := ["c1","m0","c2"], components := [{ key := "c1", value := 3 }, { key := "m0", value := 5 }, { key := "c2", value := 1 }] }]

end DiophantineInequalities11d79CongruencesManyCanonicalLaneLean
end HautevilleHouse