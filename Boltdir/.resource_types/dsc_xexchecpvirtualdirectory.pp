# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchEcpVirtualDirectory resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchEcpVirtualDirectory/MSFT_xExchEcpVirtualDirectory.schema.mof'
# 
# To learn more about PowerShell Desired State Configuration, please
# visit https://technet.microsoft.com/en-us/library/dn249912.aspx.
# 
# For more information about built-in DSC Resources, please visit
# https://technet.microsoft.com/en-us/library/dn249921.aspx.
# 
# For more information about xDsc Resources, please visit
# https://github.com/PowerShell/DscResources.
Puppet::Resource::ResourceType3.new(
  'dsc_xexchecpvirtualdirectory',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # AdfsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_adfsauthentication'),

    # BasicAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_basicauthentication'),

    # DigestAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_digestauthentication'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # ExternalAuthenticationMethods
    Puppet::Resource::Param(Any, 'dsc_externalauthenticationmethods'),

    # FormsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_formsauthentication'),

    # ExternalUrl
    Puppet::Resource::Param(Any, 'dsc_externalurl'),

    # InternalUrl
    Puppet::Resource::Param(Any, 'dsc_internalurl'),

    # WindowsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windowsauthentication'),

    # The specific backend to use for this `dsc_xexchecpvirtualdirectory`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # powershell
    # : * Default for `operatingsystem` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
