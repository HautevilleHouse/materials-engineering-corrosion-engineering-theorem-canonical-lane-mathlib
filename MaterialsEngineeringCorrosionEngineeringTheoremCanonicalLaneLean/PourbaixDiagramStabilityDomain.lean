import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure PourbaixDiagramStabilityDomain (A : AdmissibleClass) where
  element : Type
  phRange : Prop
  potentialRange : Prop
  stablePhase : Type
  corrosionRegion : Prop
  passivationRegion : Prop
  immunityRegion : Prop
  phRangeClosed : phRange
  potentialRangeClosed : potentialRange
  stablePhaseClosed : stablePhase
  corrosionRegionClosed : corrosionRegion
  passivationRegionClosed : passivationRegion
  immunityRegionClosed : immunityRegion

def PourbaixDiagramStabilityDomainClosed (A : AdmissibleClass) (P : PourbaixDiagramStabilityDomain A) : Prop :=
  P.phRange ∧ P.potentialRange ∧ P.corrosionRegion ∧ P.passivationRegion ∧ P.immunityRegion

theorem pourbaix_diagram_stability_domain_closed (A : AdmissibleClass) (P : PourbaixDiagramStabilityDomain A) : PourbaixDiagramStabilityDomainClosed A P := by
  exact And.intro P.phRangeClosed (And.intro P.potentialRangeClosed (And.intro P.corrosionRegionClosed (And.intro P.passivationRegionClosed P.immunityRegionClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
