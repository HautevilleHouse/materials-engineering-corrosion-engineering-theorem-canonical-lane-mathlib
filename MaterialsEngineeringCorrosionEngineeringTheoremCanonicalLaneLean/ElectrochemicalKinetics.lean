import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure ElectrochemicalKineticsPackage where
  butlerVolmerEquation : Prop
  chargeTransferCoefficient : Prop
  exchangeCurrentDensity : Prop
  activationOverpotential : Prop

structure ElectrochemicalKineticsEvidence (K : ElectrochemicalKineticsPackage) where
  butlerVolmerEquationClosed : K.butlerVolmerEquation
  chargeTransferCoefficientClosed : K.chargeTransferCoefficient
  exchangeCurrentDensityClosed : K.exchangeCurrentDensity
  activationOverpotentialClosed : K.activationOverpotential

def ElectrochemicalKineticsClosed (K : ElectrochemicalKineticsPackage) : Prop :=
  K.butlerVolmerEquation ∧ K.chargeTransferCoefficient ∧ K.exchangeCurrentDensity ∧ K.activationOverpotential

theorem electrochemical_kinetics_closed_from_evidence (K : ElectrochemicalKineticsPackage) (E : ElectrochemicalKineticsEvidence K) : ElectrochemicalKineticsClosed K := by
  exact And.intro E.butlerVolmerEquationClosed
    (And.intro E.chargeTransferCoefficientClosed
      (And.intro E.exchangeCurrentDensityClosed E.activationOverpotentialClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
