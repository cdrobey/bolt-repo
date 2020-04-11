# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchOutlookAnywhere resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchOutlookAnywhere/MSFT_xExchOutlookAnywhere.schema.mof'
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
  'dsc_xexchoutlookanywhere',
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

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # ExternalClientsRequireSsl
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_externalclientsrequiressl'),

    # ExtendedProtectionFlags
    Puppet::Resource::Param(Any, 'dsc_extendedprotectionflags'),

    # ExtendedProtectionSPNList
    Puppet::Resource::Param(Any, 'dsc_extendedprotectionspnlist'),

    # ExtendedProtectionTokenChecking - Valid values are Allow, None, Require.
    Puppet::Resource::Param(Any, 'dsc_extendedprotectiontokenchecking'),

    # ExternalClientAuthenticationMethod - Valid values are Ntlm, Basic, Negotiate.
    Puppet::Resource::Param(Any, 'dsc_externalclientauthenticationmethod'),

    # ExternalHostname
    Puppet::Resource::Param(Any, 'dsc_externalhostname'),

    # IISAuthenticationMethods
    Puppet::Resource::Param(Any, 'dsc_iisauthenticationmethods'),

    # InternalClientAuthenticationMethod - Valid values are Ntlm, Basic, Negotiate.
    Puppet::Resource::Param(Any, 'dsc_internalclientauthenticationmethod'),

    # InternalClientsRequireSsl
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_internalclientsrequiressl'),

    # InternalHostname
    Puppet::Resource::Param(Any, 'dsc_internalhostname'),

    # SSLOffloading
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ssloffloading'),

    # The specific backend to use for this `dsc_xexchoutlookanywhere`
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
