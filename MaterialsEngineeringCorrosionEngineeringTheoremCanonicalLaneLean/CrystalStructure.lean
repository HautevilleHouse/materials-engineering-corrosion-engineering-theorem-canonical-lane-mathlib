import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  motif : Type v
  unitCell : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  spaceGroupSymmetry : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  spaceGroupSymmetryClosed : C.spaceGroupSymmetry

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeParameters ∧ C.atomicPositions ∧ C.spaceGroupSymmetry

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomicPositionsClosed E.spaceGroupSymmetryClosed)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse