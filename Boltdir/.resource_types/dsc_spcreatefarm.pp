# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPCreateFarm resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPCreateFarm/MSFT_SPCreateFarm.schema.mof'
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
  'dsc_spcreatefarm',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # FarmConfigDatabaseName - Name of the configuration database
    Puppet::Resource::Param(Any, 'dsc_farmconfigdatabasename'),

    # DatabaseServer - Server that will host the configuration and admin content databases
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # FarmAccount - The account to use as the main farm account
    Puppet::Resource::Param(Any, 'dsc_farmaccount'),

    # Passphrase - The passphrase to use to allow servers to join this farm
    Puppet::Resource::Param(Any, 'dsc_passphrase'),

    # AdminContentDatabaseName - The name of the admin content database
    Puppet::Resource::Param(Any, 'dsc_admincontentdatabasename'),

    # CentralAdministrationPort - What port will Central Admin be provisioned to - default is 9999
    Puppet::Resource::Param(Any, 'dsc_centraladministrationport'),

    # CentralAdministrationAuth - The authentication provider of the CentralAdministration web application Valid values are NTLM, Kerberos.
    Puppet::Resource::Param(Any, 'dsc_centraladministrationauth'),

    # ServerRole - SharePoint 2016 only - the MinRole role to enroll this server as Valid values are Application, ApplicationWithSearch, Custom, DistributedCache, Search, SingleServer, SingleServerFarm, WebFrontEnd, WebFrontEndWithDistributedCache.
    Puppet::Resource::Param(Any, 'dsc_serverrole'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spcreatefarm`
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
