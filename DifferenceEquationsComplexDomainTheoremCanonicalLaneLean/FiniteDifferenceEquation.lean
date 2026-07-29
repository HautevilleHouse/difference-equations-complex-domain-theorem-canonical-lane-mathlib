import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure FiniteDifferenceEquationPackage where
  equationOrder : ℕ
  coefficientFns : List (ℂ → ℂ)
  domain : ℂ → Prop
  solutionSpaceDim : ℕ
  existenceTheorem : Prop
  uniquenessTheorem : Prop

structure FiniteDifferenceEquationEvidence (FDE : FiniteDifferenceEquationPackage) where
  existenceTheoremClosed : FDE.existenceTheorem
  uniquenessTheoremClosed : FDE.uniquenessTheorem

def FiniteDifferenceEquationClosed (FDE : FiniteDifferenceEquationPackage) : Prop :=
  FDE.existenceTheorem ∧ FDE.uniquenessTheorem

theorem finite_difference_equation_closed_from_evidence
    (FDE : FiniteDifferenceEquationPackage)
    (E : FiniteDifferenceEquationEvidence FDE) : FiniteDifferenceEquationClosed FDE := by
  exact And.intro E.existenceTheoremClosed E.uniquenessTheoremClosed

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse