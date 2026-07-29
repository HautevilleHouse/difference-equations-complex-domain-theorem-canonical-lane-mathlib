import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure DifferenceEquationsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferenceEquationsAdmittedObject where
  space : DifferenceEquationsSpace
  complexDomain : Prop
  differenceEquation : Prop
  analyticContinuation : Prop
  solution : Type
  solutionTopology : TopologicalSpace solution
  solutionExists : Prop
  conclusion : solutionExists

structure DifferenceEquationsEndgameState where
  object : DifferenceEquationsAdmittedObject

def DifferenceEquationsWitnessClosed (O : DifferenceEquationsAdmittedObject) : Prop :=
  O.solutionExists

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse