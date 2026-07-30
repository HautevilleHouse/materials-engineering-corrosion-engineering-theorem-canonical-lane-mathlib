import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionRateElectrochemicalImpedance (A : AdmissibleClass) where
  workingElectrode : Type
  counterElectrode : Type
  referenceElectrode : Type
  impedanceSpectrum : Prop
  chargeTransferResistance : Prop
  doubleLayerCapacitance : Prop
  corrosionCurrentDensity : Prop
  impedanceSpectrumClosed : impedanceSpectrum
  chargeTransferResistanceClosed : chargeTransferResistance
  doubleLayerCapacitanceClosed : doubleLayerCapacitance
  corrosionCurrentDensityClosed : corrosionCurrentDensity

def CorrosionRateElectrochemicalImpedanceClosed (A : AdmissibleClass) (C : CorrosionRateElectrochemicalImpedance A) : Prop :=
  C.impedanceSpectrum ∧ C.chargeTransferResistance ∧ C.doubleLayerCapacitance ∧ C.corrosionCurrentDensity

theorem corrosion_rate_electrochemical_impedance_closed (A : AdmissibleClass) (C : CorrosionRateElectrochemicalImpedance A) : CorrosionRateElectrochemicalImpedanceClosed A C := by
  exact And.intro C.impedanceSpectrumClosed (And.intro C.chargeTransferResistanceClosed (And.intro C.doubleLayerCapacitanceClosed C.corrosionCurrentDensityClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
