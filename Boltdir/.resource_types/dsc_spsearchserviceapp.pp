# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchServiceApp/MSFT_SPSearchServiceApp.schema.mof'
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
  'dsc_spsearchserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the search service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The application pool that it should run in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # SearchCenterUrl - The URL of the enterprise search center site collection
    Puppet::Resource::Param(Any, 'dsc_searchcenterurl'),

    # DatabaseName - The name of the database (noting that some search databases will use this as a prefix)
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The server that host the databases for this service application
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # DefaultContentAccessAccount - The default content access account for this search service app
    Puppet::Resource::Param(Any, 'dsc_defaultcontentaccessaccount'),

    # CloudIndex - Should this search service application be a cloud based service app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cloudindex'),

    # Ensure - Present if the service app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # WindowsServiceAccount - Sets the windows services for search to run as this account
    Puppet::Resource::Param(Any, 'dsc_windowsserviceaccount'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchserviceapp`
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
