# This file was automatically generated on 2020-04-10 21:03:53 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# A Diffie Helman parameter file
Puppet::Resource::ResourceType3.new(
  'dhparam',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'path', true),

    # The key size
    # 
    # Values can match `/\d+/`.
    Puppet::Resource::Param(Pattern[/\d+/], 'size'),

    # Enable fast mode
    Puppet::Resource::Param(Any, 'fastmode'),

    # The specific backend to use for this `dhparam`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # openssl
    # : Manages dhparam files with OpenSSL
    # 
    #   * Required binaries: `openssl`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['path']
  },
  true,
  false)
