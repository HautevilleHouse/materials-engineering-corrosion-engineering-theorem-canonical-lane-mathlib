import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure ElasticityPackage where
  hookesLaw : Prop
  stressTensor : Prop
  strainTensor : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.stressTensor ∧ E.strainTensor ∧ E.youngModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.stressTensorClosed (And.intro Ev.strainTensorClosed (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed)))

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse