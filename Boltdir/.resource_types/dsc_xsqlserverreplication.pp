# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerReplication resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerReplication/MSFT_xSQLServerReplication.schema.mof'
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
  'dsc_xsqlserverreplication',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - SQL Server instance name where replication distribution will be configured
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # DistributorMode - Valid values are Local, Remote.
    Puppet::Resource::Param(Any, 'dsc_distributormode'),

    # AdminLinkCredentials - Distributor administration link password
    Puppet::Resource::Param(Any, 'dsc_adminlinkcredentials'),

    # DistributionDBName - Distribution database name
    Puppet::Resource::Param(Any, 'dsc_distributiondbname'),

    # RemoteDistributor - Distributor server name if configuring publisher with remote distributor
    Puppet::Resource::Param(Any, 'dsc_remotedistributor'),

    # WorkingDirectory - Publisher working directory
    Puppet::Resource::Param(Any, 'dsc_workingdirectory'),

    # UseTrustedConnection - Publisher security mode
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usetrustedconnection'),

    # UninstallWithForce - Force flag for uninstall procedure
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_uninstallwithforce'),

    # The specific backend to use for this `dsc_xsqlserverreplication`
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
