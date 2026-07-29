import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsRiemannSurfacesLemmaCanonicalLaneLean

structure CanonicalDivisorCertificate where
  genus : ℕ
  canonicalClassDegree : ℤ
  canonicalClassDimension : ℕ
  cliffordIndex : ℕ

def canonicalDivisorCertificate : CanonicalDivisorCertificate := {
  genus := 2,
  canonicalClassDegree := 2,
  canonicalClassDimension := 2,
  cliffordIndex := 0
}

def CanonicalDivisorLayerClosed (C : CanonicalDivisorCertificate) : Prop :=
  C.canonicalClassDegree = 2*C.genus - 2 ∧
  C.canonicalClassDimension = C.genus ∧
  C.cliffordIndex = 0

theorem canonical_divisor_layer_closed_checked :
    CanonicalDivisorLayerClosed canonicalDivisorCertificate := by
  constructor
  · simp [canonicalDivisorCertificate]
  · constructor
    · simp [canonicalDivisorCertificate]
    · simp [canonicalDivisorCertificate]

end DifferentialsRiemannSurfacesLemmaCanonicalLaneLean
end HautevilleHouse