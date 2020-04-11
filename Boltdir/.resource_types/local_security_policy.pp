# This file was automatically generated on 2020-04-10 21:03:52 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Puppet type that models the local security policy
Puppet::Resource::ResourceType3.new(
  'local_security_policy',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Local Security Policy Machine Name.  What OS knows it by.
    # 
    # Valid values are `System Access`, `Event Audit`, `Privilege Rights`, `Registry Values`, ``, ``.
    Puppet::Resource::Param(Enum['System Access', 'Event Audit', 'Privilege Rights', 'Registry Values', '', ''], 'policy_type'),

    # Local Security Policy Machine Name.  What OS knows it by.
    Puppet::Resource::Param(Any, 'policy_setting'),

    # Local Security Policy Setting Value
    Puppet::Resource::Param(Any, 'policy_value')
  ],
  [
    # Local Security Setting Name. What you see it the GUI.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `local_security_policy`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # policy
    # : Puppet type that models the local security policy
    # 
    #   * Required binaries: `secedit`, `wmic`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
