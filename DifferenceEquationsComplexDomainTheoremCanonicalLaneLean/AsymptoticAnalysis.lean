import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure AsymptoticAnalysisPackage where
  sectorDomain : Type u
  asymptoticExpansion : Prop
  StokesPhenomenon : Prop
  resurgenceProperties : Prop
  borelTransformDefined : Prop

structure AsymptoticAnalysisEvidence (A : AsymptoticAnalysisPackage) where
  asymptoticExpansionClosed : A.asymptoticExpansion
  StokesPhenomenonClosed : A.StokesPhenomenon
  resurgencePropertiesClosed : A.resurgenceProperties
  borelTransformDefinedClosed : A.borelTransformDefined

def AsymptoticAnalysisClosed (A : AsymptoticAnalysisPackage) : Prop :=
  A.asymptoticExpansion ∧ A.StokesPhenomenon ∧
  A.resurgenceProperties ∧ A.borelTransformDefined

theorem asymptotic_analysis_closed_from_evidence
    (A : AsymptoticAnalysisPackage) (E : AsymptoticAnalysisEvidence A) :
    AsymptoticAnalysisClosed A := by
  exact And.intro E.asymptoticExpansionClosed
    (And.intro E.StokesPhenomenonClosed
      (And.intro E.resurgencePropertiesClosed E.borelTransformDefinedClosed))

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse