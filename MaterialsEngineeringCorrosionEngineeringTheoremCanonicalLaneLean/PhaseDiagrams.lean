import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure PhaseDiagramsPackage where
  gibbsPhaseRule : Prop
  leverRule : Prop
  eutecticPoint : Prop
  solubilityLimit : Prop
  phaseTransformation : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  leverRuleClosed : P.leverRule
  eutecticPointClosed : P.eutecticPoint
  solubilityLimitClosed : P.solubilityLimit
  phaseTransformationClosed : P.phaseTransformation

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.gibbsPhaseRule ∧ P.leverRule ∧ P.eutecticPoint ∧ P.solubilityLimit ∧ P.phaseTransformation

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage) (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.gibbsPhaseRuleClosed (And.intro E.leverRuleClosed (And.intro E.eutecticPointClosed (And.intro E.solubilityLimitClosed E.phaseTransformationClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse