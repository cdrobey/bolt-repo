# This file was automatically generated on 2020-04-10 21:03:52 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage Jenkins' credentials
# 
# XXX The properties specified are not validated against the specified
#     jenkins class (`impl`)
Puppet::Resource::ResourceType3.new(
  'jenkins_credentials',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # credentials domain within jenkins - :undef indicates the "global" domain
    # 
    # Valid values are `undef`.
    Puppet::Resource::Param(Enum['undef'], 'domain'),

    # credentials scope within jenkins
    # 
    # Valid values are `GLOBAL`, `SYSTEM`.
    Puppet::Resource::Param(Enum['GLOBAL', 'SYSTEM'], 'scope'),

    # name of the java class implimenting the credential
    # 
    # Valid values are `UsernamePasswordCredentialsImpl`, `BasicSSHUserPrivateKey`, `StringCredentialsImpl`.
    Puppet::Resource::Param(Enum['UsernamePasswordCredentialsImpl', 'BasicSSHUserPrivateKey', 'StringCredentialsImpl'], 'impl'),

    # description of credentials
    Puppet::Resource::Param(Any, 'description'),

    # username for credentials - UsernamePasswordCredentialsImpl, CertificateCredentialsImpl
    Puppet::Resource::Param(Any, 'username'),

    # password - UsernamePasswordCredentialsImpl, CertificateCredentialsImpl
    Puppet::Resource::Param(Any, 'password'),

    # ssh private key string - BasicSSHUserPrivateKey
    Puppet::Resource::Param(Any, 'private_key'),

    # passphrase to unlock ssh private key - BasicSSHUserPrivateKey
    Puppet::Resource::Param(Any, 'passphrase'),

    # secret string - StringCredentialsImpl
    Puppet::Resource::Param(Any, 'secret'),

    # name of file - FileCredentialsImpl
    Puppet::Resource::Param(Any, 'file_name'),

    # content of file - FileCredentialsImpl, CertificateCredentialsImpl
    Puppet::Resource::Param(Any, 'content'),

    # content of file - CertificateCredentialsImpl
    Puppet::Resource::Param(Any, 'source'),

    # name of the java class implimenting the key store - CertificateCredentialsImpl
    Puppet::Resource::Param(Any, 'key_store_impl')
  ],
  [
    # Id for credentials entry
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `jenkins_credentials`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cli
    # :
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
