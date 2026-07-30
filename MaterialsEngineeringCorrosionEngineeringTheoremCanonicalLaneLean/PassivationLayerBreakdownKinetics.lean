import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure PassivationLayerBreakdownKinetics (A : AdmissibleClass) where
  passiveFilmThickness : Prop
  breakdownPotential : Prop
  pitInitiationTime : Prop
  repassivationRate : Prop
  chlorideConcentration : Prop
  temperature : Prop
  passiveFilmThicknessClosed : passiveFilmThickness
  breakdownPotentialClosed : breakdownPotential
  pitInitiationTimeClosed : pitInitiationTime
  repassivationRateClosed : repassivationRate
  chlorideConcentrationClosed : chlorideConcentration
  temperatureClosed : temperature

def PassivationLayerBreakdownKineticsClosed (A : AdmissibleClass) (P : PassivationLayerBreakdownKinetics A) : Prop :=
  P.passiveFilmThickness ∧ P.breakdownPotential ∧ P.pitInitiationTime ∧ P.repassivationRate ∧ P.chlorideConcentration ∧ P.temperature

theorem passivation_layer_breakdown_kinetics_closed (A : AdmissibleClass) (P : PassivationLayerBreakdownKinetics A) : PassivationLayerBreakdownKineticsClosed A P := by
  exact And.intro P.passiveFilmThicknessClosed (And.intro P.breakdownPotentialClosed (And.intro P.pitInitiationTimeClosed (And.intro P.repassivationRateClosed (And.intro P.chlorideConcentrationClosed P.temperatureClosed))))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
