# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSecureStoreServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSecureStoreServiceApp/MSFT_SPSecureStoreServiceApp.schema.mof'
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
  'dsc_spsecurestoreserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the secure store service app
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The name of the application pool it will run in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # AuditingEnabled - Is auditing enabled for this service app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_auditingenabled'),

    # AuditlogMaxSize - What is the maximum size of the audit log in MB
    Puppet::Resource::Param(Any, 'dsc_auditlogmaxsize'),

    # DatabaseCredentials - What SQL credentials should be used to access the database
    Puppet::Resource::Param(Any, 'dsc_databasecredentials'),

    # DatabaseName - The name of the database for the service app
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The name of the database server to host the database
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # DatabaseAuthenticationType - What type of authentication should be used to access the database Valid values are Windows, SQL.
    Puppet::Resource::Param(Any, 'dsc_databaseauthenticationtype'),

    # FailoverDatabaseServer - The name of the database server hosting a failover instance of the database
    Puppet::Resource::Param(Any, 'dsc_failoverdatabaseserver'),

    # PartitionMode - Is partition mode enabled for this service app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_partitionmode'),

    # Sharing - Is sharing enabled for this service app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_sharing'),

    # Ensure - Present if the service app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsecurestoreserviceapp`
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
