import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionCrystallographyPackage where
  latticeType : Type u
  grainBoundaryEnergy : Type v
  surfaceOrientation : Type w
  crystalStructureDefined : Prop
  grainBoundaryCharacterization : Prop
  surfaceReactivityIndex : Prop

structure CorrosionCrystallographyEvidence (C : CorrosionCrystallographyPackage) where
  crystalStructureDefinedClosed : C.crystalStructureDefined
  grainBoundaryCharacterizationClosed : C.grainBoundaryCharacterization
  surfaceReactivityIndexClosed : C.surfaceReactivityIndex

def CorrosionCrystallographyClosed (C : CorrosionCrystallographyPackage) : Prop :=
  C.crystalStructureDefined ∧ C.grainBoundaryCharacterization ∧ C.surfaceReactivityIndex

theorem corrosion_crystallography_closed_from_evidence
    (C : CorrosionCrystallographyPackage) (E : CorrosionCrystallographyEvidence C) :
    CorrosionCrystallographyClosed C := by
  exact And.intro E.crystalStructureDefinedClosed
    (And.intro E.grainBoundaryCharacterizationClosed E.surfaceReactivityIndexClosed)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse