plan role::base (
  TargetSpec $targets,
) {
  apply_prep($targets)

  apply($targets) {
      include role::base
  }
}
