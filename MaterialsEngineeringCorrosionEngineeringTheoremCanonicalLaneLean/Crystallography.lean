import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  symmetryGroup : Prop
  millerIndices : Prop
  braggLaw : Prop
  xrdPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  symmetryGroupClosed : C.symmetryGroup
  millerIndicesClosed : C.millerIndices
  braggLawClosed : C.braggLaw
  xrdPatternClosed : C.xrdPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.symmetryGroup ∧ C.millerIndices ∧ C.braggLaw ∧ C.xrdPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.symmetryGroupClosed (And.intro E.millerIndicesClosed (And.intro E.braggLawClosed E.xrdPatternClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse