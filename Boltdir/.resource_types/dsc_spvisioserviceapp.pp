# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPVisioServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPVisioServiceApp/MSFT_SPVisioServiceApp.schema.mof'
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
  'dsc_spvisioserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ApplicationPool - The name of the application pool to run the service app in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # ProxyName - The name of the Visio Service Application Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # Ensure - Present if the service app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spvisioserviceapp`
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
