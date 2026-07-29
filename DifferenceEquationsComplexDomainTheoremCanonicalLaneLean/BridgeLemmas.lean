import DifferenceEquationsComplexDomainTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse