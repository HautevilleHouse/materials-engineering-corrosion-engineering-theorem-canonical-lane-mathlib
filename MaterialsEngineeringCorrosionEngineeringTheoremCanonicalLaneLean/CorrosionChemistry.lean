import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionPackage where
  electrolyteComposition : Prop
  anodeReaction : Prop
  cathodeReaction : Prop
  ionicTransport : Prop

structure CorrosionEvidence (C : CorrosionPackage) where
  electrolyteCompositionClosed : C.electrolyteComposition
  anodeReactionClosed : C.anodeReaction
  cathodeReactionClosed : C.cathodeReaction
  ionicTransportClosed : C.ionicTransport

def CorrosionClosed (C : CorrosionPackage) : Prop :=
  C.electrolyteComposition ∧ C.anodeReaction ∧ C.cathodeReaction ∧ C.ionicTransport

theorem corrosion_closed_from_evidence (C : CorrosionPackage) (E : CorrosionEvidence C) : CorrosionClosed C := by
  exact And.intro E.electrolyteCompositionClosed
    (And.intro E.anodeReactionClosed
      (And.intro E.cathodeReactionClosed E.ionicTransportClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
