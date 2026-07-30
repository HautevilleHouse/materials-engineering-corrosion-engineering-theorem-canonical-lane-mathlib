import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean

structure CorrosionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CorrosionAdmittedObject where
  space : CorrosionSpace
  materialStructure : Prop
  corrosionMechanism : Prop
  environment : Type
  environmentTopology : TopologicalSpace environment
  corrosionRatePrediction : Prop
  conclusion : corrosionRatePrediction

def CorrosionWitnessClosed (O : CorrosionAdmittedObject) : Prop :=
  O.corrosionRatePrediction

end MaterialsEngineeringCorrosionEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
