# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPDistributedCacheService resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPDistributedCacheService/MSFT_SPDistributedCacheService.schema.mof'
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
  'dsc_spdistributedcacheservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - A name to assign to this resource - not really used. For example - AppFabricCachingService
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Present to ensure the current server should be running distributed cache, absent to ensure that it isn't running Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # CacheSizeInMB - How many MB should be used for the cache. The maximum supported is 16384
    Puppet::Resource::Param(Any, 'dsc_cachesizeinmb'),

    # ServiceAccount - The name of the service account to run the service as. This should already be registered as a managed account in SharePoint
    Puppet::Resource::Param(Any, 'dsc_serviceaccount'),

    # ServerProvisionOrder - A list of servers which specifies the order they should provision the cache in to ensure that two servers do not do it at the same time
    Puppet::Resource::Param(Any, 'dsc_serverprovisionorder'),

    # CreateFirewallRules - Should the Windows Firewall rules for distributed cache be created?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_createfirewallrules'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spdistributedcacheservice`
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
