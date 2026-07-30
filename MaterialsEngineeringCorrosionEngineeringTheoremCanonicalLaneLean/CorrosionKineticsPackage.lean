import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionKineticsPackage where
  tafelKinetics : Prop
  passivationLayer : Prop
  pittingPotential : Prop
  corrosionRate : Prop
  electrochemicalImpedance : Prop

structure CorrosionKineticsEvidence (C : CorrosionKineticsPackage) where
  tafelKineticsClosed : C.tafelKinetics
  passivationLayerClosed : C.passivationLayer
  pittingPotentialClosed : C.pittingPotential
  corrosionRateClosed : C.corrosionRate
  electrochemicalImpedanceClosed : C.electrochemicalImpedance

def CorrosionKineticsClosed (C : CorrosionKineticsPackage) : Prop :=
  C.tafelKinetics ∧ C.passivationLayer ∧ C.pittingPotential ∧ C.corrosionRate ∧ C.electrochemicalImpedance

theorem corrosion_kinetics_closed_from_evidence (C : CorrosionKineticsPackage) (E : CorrosionKineticsEvidence C) :
    CorrosionKineticsClosed C := by
  exact And.intro E.tafelKineticsClosed
    (And.intro E.passivationLayerClosed
      (And.intro E.pittingPotentialClosed
        (And.intro E.corrosionRateClosed E.electrochemicalImpedanceClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
