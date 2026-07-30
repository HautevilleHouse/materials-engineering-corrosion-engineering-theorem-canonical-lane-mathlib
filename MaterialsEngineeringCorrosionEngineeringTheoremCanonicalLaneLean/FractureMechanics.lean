import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure FracturePackage (E : ElasticityPackage) where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagation : Prop
  parisLaw : Prop

structure FractureEvidence {E : ElasticityPackage} (F : FracturePackage E) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  parisLawClosed : F.parisLaw

def FractureClosed {E : ElasticityPackage} (F : FracturePackage E) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagation ∧ F.parisLaw

theorem fracture_closed_from_evidence {E : ElasticityPackage} (F : FracturePackage E) (Ev : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro Ev.stressIntensityFactorClosed
    (And.intro Ev.fractureToughnessClosed
      (And.intro Ev.crackPropagationClosed Ev.parisLawClosed))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse