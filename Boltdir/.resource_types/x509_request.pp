# This file was automatically generated on 2020-04-10 21:03:53 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# An x509 certificate signing request
Puppet::Resource::ResourceType3.new(
  'x509_request',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'path', true),

    # Whether to replace the certificate if the private key mismatches
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'force'),

    # The optional password for the private key
    Puppet::Resource::Param(Any, 'password'),

    Puppet::Resource::Param(Any, 'template'),

    Puppet::Resource::Param(Any, 'private_key'),

    # The authentication algorithm: 'rsa', 'dsa' or ec
    # 
    # Valid values are `rsa`, `dsa`, `ec`.
    Puppet::Resource::Param(Enum['rsa', 'dsa', 'ec'], 'authentication'),

    # Whether to generate the key unencrypted. This is needed by some applications like OpenLDAP
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'encrypted'),

    # The specific backend to use for this `x509_request`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # openssl
    # : Manages certificate signing requests with OpenSSL
    # 
    #   * Required binaries: `openssl`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['path']
  },
  true,
  false)
