# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebAppPoolDefaults resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebAppPoolDefaults/MSFT_xWebAppPoolDefaults.schema.mof'
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
  'dsc_xwebapppooldefaults',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ApplyTo - Dummy value because we need a key, always 'Machine' Valid values are Machine.
    Puppet::Resource::Param(Any, 'dsc_applyto'),

    # ManagedRuntimeVersion - applicationPools/applicationPoolDefaults/managedRuntimeVersion Valid values are , v2.0, v4.0.
    Puppet::Resource::Param(Any, 'dsc_managedruntimeversion'),

    # IdentityType - applicationPools/applicationPoolDefaults/processModel/identityType Valid values are ApplicationPoolIdentity, LocalService, LocalSystem, NetworkService.
    Puppet::Resource::Param(Any, 'dsc_identitytype'),

    # The specific backend to use for this `dsc_xwebapppooldefaults`
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
