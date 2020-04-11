# This file was automatically generated on 2020-04-10 21:03:53 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# An x509 certificate
Puppet::Resource::ResourceType3.new(
  'x509_cert',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The path to the certificate
    Puppet::Resource::Param(Any, 'path', true),

    # The path to the private key
    Puppet::Resource::Param(Any, 'private_key'),

    # The validity of the certificate
    # 
    # Values can match `/\d+/`.
    Puppet::Resource::Param(Pattern[/\d+/], 'days'),

    # Whether to replace the certificate if the private key mismatches
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'force'),

    # The optional password for the private key
    Puppet::Resource::Param(Any, 'password'),

    # Whether adding v3 SAN from config
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'req_ext'),

    # The template to use
    Puppet::Resource::Param(Any, 'template'),

    # The authentication algorithm: 'rsa', 'dsa or ec'
    # 
    # Valid values are `rsa`, `dsa`, `ec`.
    Puppet::Resource::Param(Enum['rsa', 'dsa', 'ec'], 'authentication'),

    # The specific backend to use for this `x509_cert`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # openssl
    # : Manages certificates with OpenSSL
    # 
    #   * Required binaries: `openssl`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['path']
  },
  true,
  false)
