# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The base Puppet DSC type that all of the types inherit from.
# Do not use this directly.
Puppet::Resource::ResourceType3.new(
  'base_dsc',
  [

  ],
  [
    # A name to describe your resource, used for uniqueness.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `base_dsc`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # powershell
    # : Applies DSC Resources by generating a configuration file and applying it.
    # 
    #   * Required binaries: `powershell.exe`.
    #   * Default for `operatingsystem` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
