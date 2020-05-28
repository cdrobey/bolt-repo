plan role::docker (
  TargetSpec $targets,
) {
  apply_prep($targets)

  apply($targets) {
      include role::docker
  }
}
