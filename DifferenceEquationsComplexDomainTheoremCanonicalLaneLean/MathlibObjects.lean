import DifferenceEquationsComplexDomainTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferenceAdmittedObject where
  space : DifferenceSpace
  complexAnalyticManifold : Prop
  differenceEquationDefined : Prop
  solutionSpace : Type
  solutionTopology : TopologicalSpace solutionSpace
  analyticContinuation : Prop
  conclusion : analyticContinuation

structure DifferenceEndgameState where
  object : DifferenceAdmittedObject

def DifferenceWitnessClosed (O : DifferenceAdmittedObject) : Prop :=
  O.analyticContinuation

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse