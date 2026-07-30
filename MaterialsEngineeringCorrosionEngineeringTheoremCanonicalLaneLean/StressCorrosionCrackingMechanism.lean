import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure StressCorrosionCrackingMechanism (A : AdmissibleClass) where
  material : Type
  environment : Type
  tensileStress : Prop
  crackGrowthRate : Prop
  thresholdStressIntensity : Prop
  fractureMode : Type
  tensileStressClosed : tensileStress
  crackGrowthRateClosed : crackGrowthRate
  thresholdStressIntensityClosed : thresholdStressIntensity

def StressCorrosionCrackingMechanismClosed (A : AdmissibleClass) (S : StressCorrosionCrackingMechanism A) : Prop :=
  S.tensileStress ∧ S.crackGrowthRate ∧ S.thresholdStressIntensity

theorem stress_corrosion_cracking_mechanism_closed (A : AdmissibleClass) (S : StressCorrosionCrackingMechanism A) : StressCorrosionCrackingMechanismClosed A S := by
  exact And.intro S.tensileStressClosed (And.intro S.crackGrowthRateClosed S.thresholdStressIntensityClosed)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
