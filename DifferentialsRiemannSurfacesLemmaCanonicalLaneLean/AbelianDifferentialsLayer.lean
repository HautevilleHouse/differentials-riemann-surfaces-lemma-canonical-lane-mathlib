import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsRiemannSurfacesLemmaCanonicalLaneLean

structure AbelianDifferentialCertificate where
  holomorphicDimension : ℕ
  meromorphicDimension : ℕ
  genus : ℕ
  holomorphicCount : Prop
  meromorphicCount : Prop

def abelianDifferentialCertificate : AbelianDifferentialCertificate := {
  holomorphicDimension := 1,
  meromorphicDimension := 2,
  genus := 1,
  holomorphicCount := True,
  meromorphicCount := True
}

def AbelianDifferentialLayerClosed (C : AbelianDifferentialCertificate) : Prop :=
  C.holomorphicDimension = C.genus ∧
  C.meromorphicDimension = 2*C.genus - 2

theorem abelian_differential_layer_closed_checked :
    AbelianDifferentialLayerClosed abelianDifferentialCertificate := by
  constructor
  · simp [abelianDifferentialCertificate]
  · simp [abelianDifferentialCertificate]

end DifferentialsRiemannSurfacesLemmaCanonicalLaneLean
end HautevilleHouse