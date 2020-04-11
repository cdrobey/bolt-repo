# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchClientAccessServer resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchClientAccessServer/MSFT_xExchClientAccessServer.schema.mof'
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
  'dsc_xexchclientaccessserver',
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

    # AutoDiscoverServiceInternalUri
    Puppet::Resource::Param(Any, 'dsc_autodiscoverserviceinternaluri'),

    # AutoDiscoverSiteScope
    Puppet::Resource::Param(Any, 'dsc_autodiscoversitescope'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # AlternateServiceAccountCredential
    Puppet::Resource::Param(Any, 'dsc_alternateserviceaccountcredential'),

    # CleanUpInvalidAlternateServiceAccountCredentials
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cleanupinvalidalternateserviceaccountcredentials'),

    # RemoveAlternateServiceAccountCredentials
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_removealternateserviceaccountcredentials'),

    # The specific backend to use for this `dsc_xexchclientaccessserver`
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
