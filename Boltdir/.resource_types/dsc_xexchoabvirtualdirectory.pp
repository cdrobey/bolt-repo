# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchOabVirtualDirectory resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchOabVirtualDirectory/MSFT_xExchOabVirtualDirectory.schema.mof'
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
  'dsc_xexchoabvirtualdirectory',
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

    # OABsToDistribute
    Puppet::Resource::Param(Any, 'dsc_oabstodistribute'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # BasicAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_basicauthentication'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # ExtendedProtectionFlags
    Puppet::Resource::Param(Any, 'dsc_extendedprotectionflags'),

    # ExtendedProtectionSPNList
    Puppet::Resource::Param(Any, 'dsc_extendedprotectionspnlist'),

    # ExtendedProtectionTokenChecking - Valid values are None, Allow, Require.
    Puppet::Resource::Param(Any, 'dsc_extendedprotectiontokenchecking'),

    # ExternalUrl
    Puppet::Resource::Param(Any, 'dsc_externalurl'),

    # InternalUrl
    Puppet::Resource::Param(Any, 'dsc_internalurl'),

    # PollInterval
    Puppet::Resource::Param(Any, 'dsc_pollinterval'),

    # RequireSSL
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_requiressl'),

    # WindowsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windowsauthentication'),

    # The specific backend to use for this `dsc_xexchoabvirtualdirectory`
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
