import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DifferenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse