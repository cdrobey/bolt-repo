# This file was automatically generated on 2020-04-10 21:03:53 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage a MongoDB replicaSet
Puppet::Resource::ResourceType3.new(
  'mongodb_replset',
  [
    # Valid values are `present`.
    Puppet::Resource::Param(Enum['present'], 'ensure'),

    # The replicaSet settings config
    Puppet::Resource::Param(Any, 'settings'),

    # The replicaSet members config
    Puppet::Resource::Param(Any, 'members')
  ],
  [
    # The name of the replicaSet
    Puppet::Resource::Param(Any, 'name'),

    # The replicaSet arbiter
    Puppet::Resource::Param(Any, 'arbiter'),

    # Host to use for Replicaset initialization
    Puppet::Resource::Param(Any, 'initialize_host'),

    # The specific backend to use for this `mongodb_replset`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # mongo
    # : Manage hosts members for a replicaset.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
