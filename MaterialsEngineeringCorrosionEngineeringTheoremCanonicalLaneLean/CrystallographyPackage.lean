import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Prop
  symmetryGroup : Prop
  xrayDiffraction : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellClosed : C.unitCell
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionClosed : C.xrayDiffraction

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCell ∧ C.symmetryGroup ∧ C.xrayDiffraction

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.unitCellClosed
      (And.intro E.symmetryGroupClosed E.xrayDiffractionClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
