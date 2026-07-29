import DifferenceEquationsComplexDomainTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse