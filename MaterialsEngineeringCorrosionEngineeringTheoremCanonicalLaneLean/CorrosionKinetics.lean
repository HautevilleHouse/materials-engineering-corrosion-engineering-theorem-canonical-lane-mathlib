import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionKineticsPackage where
  electrochemicalReaction : Type u
  corrosionRate : Prop
  tafelEquation : Prop
  polarisationResistance : Prop
  passivationFilm : Prop

structure CorrosionKineticsEvidence (C : CorrosionKineticsPackage) where
  corrosionRateClosed : C.corrosionRate
  tafelEquationClosed : C.tafelEquation
  polarisationResistanceClosed : C.polarisationResistance
  passivationFilmClosed : C.passivationFilm

def CorrosionKineticsClosed (C : CorrosionKineticsPackage) : Prop :=
  C.corrosionRate ∧ C.tafelEquation ∧ C.polarisationResistance ∧ C.passivationFilm

theorem corrosion_kinetics_closed_from_evidence (C : CorrosionKineticsPackage) (E : CorrosionKineticsEvidence C) :
    CorrosionKineticsClosed C := by
  exact And.intro E.corrosionRateClosed
    (And.intro E.tafelEquationClosed
      (And.intro E.polarisationResistanceClosed E.passivationFilmClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse