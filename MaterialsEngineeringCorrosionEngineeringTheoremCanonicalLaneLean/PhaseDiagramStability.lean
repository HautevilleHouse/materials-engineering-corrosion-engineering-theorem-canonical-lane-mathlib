import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure PhaseDiagramStabilityPackage where
  temperatureRange : Type u
  compositionDomain : Type v
  stablePhases : Type w
  phaseBoundariesDetermined : Prop
  gibbsFreeEnergyMinimized : Prop
  corrosionProductPrediction : Prop

structure PhaseDiagramStabilityEvidence (P : PhaseDiagramStabilityPackage) where
  phaseBoundariesDeterminedClosed : P.phaseBoundariesDetermined
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  corrosionProductPredictionClosed : P.corrosionProductPrediction

def PhaseDiagramStabilityClosed (P : PhaseDiagramStabilityPackage) : Prop :=
  P.phaseBoundariesDetermined ∧ P.gibbsFreeEnergyMinimized ∧ P.corrosionProductPrediction

theorem phase_diagram_stability_closed_from_evidence
    (P : PhaseDiagramStabilityPackage) (E : PhaseDiagramStabilityEvidence P) :
    PhaseDiagramStabilityClosed P := by
  exact And.intro E.phaseBoundariesDeterminedClosed
    (And.intro E.gibbsFreeEnergyMinimizedClosed E.corrosionProductPredictionClosed)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse