import DifferenceEquationsComplexDomainTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

def ConstrainedDifferenceEquationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_equations_endgame (A : AdmissibleClass) :
    ConstrainedDifferenceEquationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse