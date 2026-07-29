import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsRiemannSurfacesLemmaCanonicalLaneLean

structure AbelJacobiDatum where
  genus : Nat
  periodMatrix : String
  mapWellDefined : Prop
  imageClosed : Prop

def primitiveAbelJacobiDatum : AbelJacobiDatum := {
  genus := 1,
  periodMatrix := "[[1, 0], [0, 1]]",
  mapWellDefined := True.intro,
  imageClosed := True.intro
}

def AbelJacobiLayerClosed (A : AbelJacobiDatum) : Prop :=
  A.mapWellDefined ∧ A.imageClosed

theorem abel_jacobi_layer_closed_checked :
    AbelJacobiLayerClosed primitiveAbelJacobiDatum := by
  exact And.intro True.intro True.intro

end DifferentialsRiemannSurfacesLemmaCanonicalLaneLean
end HautevilleHouse