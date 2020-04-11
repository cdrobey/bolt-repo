# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPJoinFarm resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPJoinFarm/MSFT_SPJoinFarm.schema.mof'
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
  'dsc_spjoinfarm',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # FarmConfigDatabaseName - The name of the config database to connect to
    Puppet::Resource::Param(Any, 'dsc_farmconfigdatabasename'),

    # DatabaseServer - The server that hosts the config database
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # Passphrase - The passphrase that should be used to join the farm
    Puppet::Resource::Param(Any, 'dsc_passphrase'),

    # ServerRole - SharePoint 2016 only - the MinRole role to enroll this server as Valid values are Application, ApplicationWithSearch, Custom, DistributedCache, Search, SingleServer, SingleServerFarm, WebFrontEnd, WebFrontEndWithDistributedCache.
    Puppet::Resource::Param(Any, 'dsc_serverrole'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spjoinfarm`
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
