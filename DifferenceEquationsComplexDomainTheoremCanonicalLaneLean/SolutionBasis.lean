import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure SolutionBasisPackage where
  basisSize : ℕ
  basisFunctions : List (ℂ → ℂ)
  linearIndependence : Prop
  cauchyIntegralRepresentation : Prop
  wronskianProperty : Prop

structure SolutionBasisEvidence (S : SolutionBasisPackage) where
  linearIndependenceClosed : S.linearIndependence
  cauchyIntegralRepresentationClosed : S.cauchyIntegralRepresentation
  wronskianPropertyClosed : S.wronskianProperty

def SolutionBasisClosed (S : SolutionBasisPackage) : Prop :=
  S.linearIndependence ∧ S.cauchyIntegralRepresentation ∧ S.wronskianProperty

theorem solution_basis_closed_from_evidence
    (S : SolutionBasisPackage) (E : SolutionBasisEvidence S) : SolutionBasisClosed S := by
  exact And.intro E.linearIndependenceClosed
    (And.intro E.cauchyIntegralRepresentationClosed E.wronskianPropertyClosed)

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse