import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure PhaseDiagramPackage (C : CrystalStructurePackage) where
  temperatureCompositionAxes : Prop
  phaseBoundaries : Prop
  equilibriumPhases : Prop
  leverRule : Prop
  solidusLiquidus : Prop

structure PhaseDiagramEvidence {C : CrystalStructurePackage} (D : PhaseDiagramPackage C) where
  temperatureCompositionAxesClosed : D.temperatureCompositionAxes
  phaseBoundariesClosed : D.phaseBoundaries
  equilibriumPhasesClosed : D.equilibriumPhases
  leverRuleClosed : D.leverRule
  solidusLiquidusClosed : D.solidusLiquidus

def PhaseDiagramClosed {C : CrystalStructurePackage} (D : PhaseDiagramPackage C) : Prop :=
  D.temperatureCompositionAxes ∧ D.phaseBoundaries ∧ D.equilibriumPhases ∧ D.leverRule ∧ D.solidusLiquidus

theorem phase_diagram_closed_from_evidence {C : CrystalStructurePackage} (D : PhaseDiagramPackage C) (E : PhaseDiagramEvidence D) :
    PhaseDiagramClosed D := by
  exact And.intro E.temperatureCompositionAxesClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.equilibriumPhasesClosed
        (And.intro E.leverRuleClosed E.solidusLiquidusClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse