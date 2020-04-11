# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPUserProfileServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPUserProfileServiceApp/MSFT_SPUserProfileServiceApp.schema.mof'
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
  'dsc_spuserprofileserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the user profile service
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The name of the application pool to run the service app in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # FarmAccount - The farm account to use when provisioning the app
    Puppet::Resource::Param(Any, 'dsc_farmaccount'),

    # MySiteHostLocation - The URL of the my site host collection
    Puppet::Resource::Param(Any, 'dsc_mysitehostlocation'),

    # ProfileDBName - The name of the profile database
    Puppet::Resource::Param(Any, 'dsc_profiledbname'),

    # ProfileDBServer - The name of the server to host the profile database
    Puppet::Resource::Param(Any, 'dsc_profiledbserver'),

    # SocialDBName - The name of the social database
    Puppet::Resource::Param(Any, 'dsc_socialdbname'),

    # SocialDBServer - The name of the database server to host the social database
    Puppet::Resource::Param(Any, 'dsc_socialdbserver'),

    # SyncDBName - The name of the sync database
    Puppet::Resource::Param(Any, 'dsc_syncdbname'),

    # SyncDBServer - The name of the database server to host the sync database
    Puppet::Resource::Param(Any, 'dsc_syncdbserver'),

    # EnableNetBIOS - Whether Farm should resolve NetBIOS domain names
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enablenetbios'),

    # NoILMUsed - Specifies if the service application should be configured to use AD Import
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_noilmused'),

    # Ensure - Present if the service app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spuserprofileserviceapp`
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
