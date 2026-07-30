import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure ElasticityPackage (C : CrystalStructurePackage) where
  strainTensor : Type u
  stressTensor : Type v
  hookesLaw : Prop
  elasticConstants : Prop
  isotropySymmetry : Prop

structure ElasticityEvidence {C : CrystalStructurePackage} (E : ElasticityPackage C) where
  hookesLawClosed : E.hookesLaw
  elasticConstantsClosed : E.elasticConstants
  isotropySymmetryClosed : E.isotropySymmetry

def ElasticityClosed {C : CrystalStructurePackage} (E : ElasticityPackage C) : Prop :=
  E.hookesLaw ∧ E.elasticConstants ∧ E.isotropySymmetry

theorem elasticity_closed_from_evidence {C : CrystalStructurePackage} (E : ElasticityPackage C) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.elasticConstantsClosed Ev.isotropySymmetryClosed)

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse