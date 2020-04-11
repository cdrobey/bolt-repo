# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPServiceAppProxyGroup resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPServiceAppProxyGroup/MSFT_SPServiceAppProxyGroup.schema.mof'
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
  'dsc_spserviceappproxygroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the Proxy Group to create
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Present creates the proxy group if it does not already exist, Absent will delete the proxy group if it exists Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ServiceAppProxies - List of service application proxies that belong in this proxy group, all others will be removed
    Puppet::Resource::Param(Any, 'dsc_serviceappproxies'),

    # ServiceAppProxiesToInclude - List of service application proxies to add to this proxy group, existing proxies will remain
    Puppet::Resource::Param(Any, 'dsc_serviceappproxiestoinclude'),

    # ServiceAppProxiesToExclude - List of service application proxies to remove from this proxy grop, all others will remain
    Puppet::Resource::Param(Any, 'dsc_serviceappproxiestoexclude'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spserviceappproxygroup`
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
