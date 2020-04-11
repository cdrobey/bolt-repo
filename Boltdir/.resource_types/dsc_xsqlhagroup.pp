# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSqlHAGroup resource type.
# Automatically generated from
# 'xSqlPs/DSCResources/MSFT_xSqlHAGroup/MSFT_xSqlHAGroup.schema.mof'
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
  'dsc_xsqlhagroup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of sql availability group
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Database - Array of databases on the local sql instance. Each database can belong to only one HA group.
    Puppet::Resource::Param(Any, 'dsc_database'),

    # ClusterName - The name of windows failover cluster for the availability group
    Puppet::Resource::Param(Any, 'dsc_clustername'),

    # DatabaseBackupPath - The net share for Sql replication initialization
    Puppet::Resource::Param(Any, 'dsc_databasebackuppath'),

    # InstanceName - Name of sql instance
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # EndPointName - Name of EndPoint to access High Availability sql instance.
    Puppet::Resource::Param(Any, 'dsc_endpointname'),

    # DomainCredential - Domain credential could get list of cluster nodes.
    Puppet::Resource::Param(Any, 'dsc_domaincredential'),

    # SqlAdministratorCredential - Sql sa credential.
    Puppet::Resource::Param(Any, 'dsc_sqladministratorcredential'),

    # The specific backend to use for this `dsc_xsqlhagroup`
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
