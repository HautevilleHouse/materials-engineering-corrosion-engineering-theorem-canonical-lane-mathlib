import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean.CorrosionChemistry
import MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean.ElectrochemicalKinetics
import MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean.PassivationFilm

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionEngineeringAdmissibleClass where
  corrosionPackage : CorrosionPackage
  corrosionEvidence : CorrosionEvidence corrosionPackage
  kineticsPackage : ElectrochemicalKineticsPackage
  kineticsEvidence : ElectrochemicalKineticsEvidence kineticsPackage
  passivationPackage : PassivationFilmPackage
  passivationEvidence : PassivationFilmEvidence passivationPackage

def bridgeClosed (A : CorrosionEngineeringAdmissibleClass) : Prop :=
  CorrosionClosed A.corrosionPackage ∧ ElectrochemicalKineticsClosed A.kineticsPackage ∧ PassivationFilmClosed A.passivationPackage

def gateClosed (A : CorrosionEngineeringAdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : CorrosionEngineeringAdmissibleClass) : bridgeClosed A := by
  refine And.intro (corrosion_closed_from_evidence A.corrosionPackage A.corrosionEvidence)
    (And.intro (electrochemical_kinetics_closed_from_evidence A.kineticsPackage A.kineticsEvidence)
      (passivation_film_closed_from_evidence A.passivationPackage A.passivationEvidence))

theorem gate_from_admissible_class (A : CorrosionEngineeringAdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedCorrosionEngineeringClosure (A : CorrosionEngineeringAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_corrosion_engineering_endgame (A : CorrosionEngineeringAdmissibleClass) : ConstrainedCorrosionEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
