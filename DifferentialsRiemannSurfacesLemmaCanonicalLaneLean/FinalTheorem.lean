import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsRiemannSurfacesLemmaCanonicalLaneLean

def ConstrainedDifferentialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_differentials_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialsClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end DifferentialsRiemannSurfacesLemmaCanonicalLaneLean
end HautevilleHouse