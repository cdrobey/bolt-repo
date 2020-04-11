# This file was automatically generated on 2020-04-10 21:03:53 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# An SSL private key
Puppet::Resource::ResourceType3.new(
  'ssl_pkey',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The path to the key
    Puppet::Resource::Param(Any, 'path', true),

    # The authentication algorithm: 'rsa', 'dsa or ec'
    # 
    # Valid values are `rsa`, `dsa`, `ec`.
    Puppet::Resource::Param(Enum['rsa', 'dsa', 'ec'], 'authentication'),

    # The key size
    # 
    # Values can match `/\d+/`.
    Puppet::Resource::Param(Pattern[/\d+/], 'size'),

    # The EC curve
    Puppet::Resource::Param(Any, 'curve'),

    # The optional password for the key
    Puppet::Resource::Param(Any, 'password'),

    # The specific backend to use for this `ssl_pkey`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # openssl
    # : Manages private keys with OpenSSL
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['path']
  },
  true,
  false)
