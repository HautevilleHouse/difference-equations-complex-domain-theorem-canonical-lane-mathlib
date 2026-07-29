import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure FrobeniusStructurePackage where
  formalSolutionExponents : Type u
  indicialEquality : Prop
  consistencyMatrices : Prop
  formalSolutionExponentsClosed : formalSolutionExponents
  indicialEqualityClosed : indicialEquality
  consistencyMatricesClosed : consistencyMatrices

def FrobeniusStructureClosed (P : FrobeniusStructurePackage) : Prop :=
  P.indicialEquality ∧ P.consistencyMatrices

structure FrobeniusStructureEvidence (P : FrobeniusStructurePackage) where
  indicialEqualityClosed : P.indicialEquality
  consistencyMatricesClosed : P.consistencyMatrices

theorem frobenius_structure_closed_from_evidence
    (P : FrobeniusStructurePackage) (E : FrobeniusStructureEvidence P) :
    FrobeniusStructureClosed P := by
  exact And.intro E.indicialEqualityClosed E.consistencyMatricesClosed

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse