plan profile::test_install(
  TargetSpec $targets,
) {
  apply_prep($targets)

  apply($targets) {
      include role::base
  }
}
