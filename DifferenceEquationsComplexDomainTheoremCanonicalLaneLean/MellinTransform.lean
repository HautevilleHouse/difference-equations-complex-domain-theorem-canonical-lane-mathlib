import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainTheoremCanonicalLaneLean

structure MellinTransformPackage where
  transformDomain : Type u
  analyticContinuationProp : Prop
  fundamentalStrip : Prop
  functionalEquation : Prop
  convergenceAbscissa : Prop
  meromorphicExtension : Prop

structure MellinTransformEvidence (M : MellinTransformPackage) where
  analyticContinuationClosed : M.analyticContinuationProp
  fundamentalStripClosed : M.fundamentalStrip
  functionalEquationClosed : M.functionalEquation
  convergenceAbscissaClosed : M.convergenceAbscissa
  meromorphicExtensionClosed : M.meromorphicExtension

def MellinTransformClosed (M : MellinTransformPackage) : Prop :=
  M.analyticContinuationProp ∧ M.fundamentalStrip ∧
  M.functionalEquation ∧ M.convergenceAbscissa ∧ M.meromorphicExtension

theorem mellin_transform_closed_from_evidence (M : MellinTransformPackage)
    (E : MellinTransformEvidence M) : MellinTransformClosed M := by
  exact And.intro E.analyticContinuationClosed
    (And.intro E.fundamentalStripClosed
      (And.intro E.functionalEquationClosed
        (And.intro E.convergenceAbscissaClosed E.meromorphicExtensionClosed)))

end DifferenceEquationsComplexDomainTheoremCanonicalLaneLean
end HautevilleHouse