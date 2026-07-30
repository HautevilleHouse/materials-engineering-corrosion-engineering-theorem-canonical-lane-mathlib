import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure ElasticityFracturePackage where
  stressTensor : Type u
  strainTensor : Type u
  elasticModuli : Prop
  fractureToughness : Prop
  stressIntensityFactor : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  elasticModuliClosed : E.elasticModuli
  fractureToughnessClosed : E.fractureToughness
  stressIntensityFactorClosed : E.stressIntensityFactor

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.elasticModuli ∧ E.fractureToughness ∧ E.stressIntensityFactor

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.stressTensorClosed
    (And.intro Ev.strainTensorClosed
      (And.intro Ev.elasticModuliClosed
        (And.intro Ev.fractureToughnessClosed Ev.stressIntensityFactorClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
