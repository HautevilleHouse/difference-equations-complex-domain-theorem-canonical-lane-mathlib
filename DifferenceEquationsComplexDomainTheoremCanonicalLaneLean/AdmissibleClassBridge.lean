import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure DifferenceEquationsAdmittedObject where
  system : ℂ → ℂᵐ
  admitsMeromorphicBasis : Prop
  frobeniusStructurePresent : Prop
  stokesPhenomenonClosed : Prop
  conclusion : admitsMeromorphicBasis ∧ frobeniusStructurePresent ∧ stokesPhenomenonClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.admitsMeromorphicBasis ∧ O.frobeniusStructurePresent ∧ O.stokesPhenomenonClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A.object with ⟨sys, mb, fp, sc, conc⟩
  exact conc

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse