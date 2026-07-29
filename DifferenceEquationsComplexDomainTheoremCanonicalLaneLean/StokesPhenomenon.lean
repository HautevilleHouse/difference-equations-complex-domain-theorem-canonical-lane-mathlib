import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure StokesPhenomenonPackage where
  stokesData : Type u
  stokesMatrices : Type v
  connectionDataDefined : Prop
  monodromyMatricesDefined : Prop
  connectionDataDefinedClosed : connectionDataDefined
  monodromyMatricesDefinedClosed : monodromyMatricesDefined

def StokesPhenomenonClosed (S : StokesPhenomenonPackage) : Prop :=
  S.connectionDataDefined ∧ S.monodromyMatricesDefined

structure StokesPhenomenonEvidence (S : StokesPhenomenonPackage) where
  connectionDataDefinedClosed : S.connectionDataDefined
  monodromyMatricesDefinedClosed : S.monodromyMatricesDefined

theorem stokes_phenomenon_closed_from_evidence
    (S : StokesPhenomenonPackage) (E : StokesPhenomenonEvidence S) :
    StokesPhenomenonClosed S := by
  exact And.intro E.connectionDataDefinedClosed E.monodromyMatricesDefinedClosed

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse