import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure MeromorphicSolutionDomain where
  region : Set ℂ
  connection : Set ℂ
  admitsMeromorphicBasis : Prop
  germData : Prop

def MeromorphicSolutionDomainClosed (D : MeromorphicSolutionDomain) : Prop :=
  D.admitsMeromorphicBasis ∧ D.germData

structure MeromorphicSolutionEvidence (D : MeromorphicSolutionDomain) where
  admitsMeromorphicBasisClosed : D.admitsMeromorphicBasis
  germDataClosed : D.germData

theorem meromorphic_solution_domain_closed_from_evidence
    (D : MeromorphicSolutionDomain) (E : MeromorphicSolutionEvidence D) :
    MeromorphicSolutionDomainClosed D := by
  exact And.intro E.admitsMeromorphicBasisClosed E.germDataClosed

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse