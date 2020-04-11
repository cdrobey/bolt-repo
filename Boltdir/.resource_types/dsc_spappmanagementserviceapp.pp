# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPAppManagementServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPAppManagementServiceApp/MSFT_SPAppManagementServiceApp.schema.mof'
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
  'dsc_spappmanagementserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the app management service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The app pool that should be used to run the service app
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # DatabaseName - The name of the database for the service application
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The name of the server for the database
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # Ensure - Present ensures service app exists, absent ensures it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spappmanagementserviceapp`
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
