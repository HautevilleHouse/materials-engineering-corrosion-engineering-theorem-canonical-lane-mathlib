import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure GalvanicCorrosionCouplePotential (A : AdmissibleClass) where
  cathodicMaterial : Type
  anodicMaterial : Type
  electrolyte : Type
  openCircuitPotential : Prop
  couplePotential : Prop
  potentialDrivingForce : Prop
  corrosionRate : Prop
  openCircuitPotentialClosed : openCircuitPotential
  couplePotentialClosed : couplePotential
  potentialDrivingForceClosed : potentialDrivingForce
  corrosionRateClosed : corrosionRate

def GalvanicCorrosionCouplePotentialClosed (A : AdmissibleClass) (G : GalvanicCorrosionCouplePotential A) : Prop :=
  G.openCircuitPotential ∧ G.couplePotential ∧ G.potentialDrivingForce ∧ G.corrosionRate

theorem galvanic_corrosion_couple_potential_closed (A : AdmissibleClass) (G : GalvanicCorrosionCouplePotential A) : GalvanicCorrosionCouplePotentialClosed A G := by
  exact And.intro G.openCircuitPotentialClosed (And.intro G.couplePotentialClosed (And.intro G.potentialDrivingForceClosed G.corrosionRateClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
