# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerAlwaysOnAvailabilityGroupReplica resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerAlwaysOnAvailabilityGroupReplica/MSFT_xSQLServerAlwaysOnAvailabilityGroupReplica.schema.mof'
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
  'dsc_xsqlserveralwaysonavailabilitygroupreplica',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the availability group replica.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # AvailabilityGroupName - The name of the availability group.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupname'),

    # SQLServer - Hostname of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configued.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # PrimaryReplicaSQLServer - Hostname of the SQL Server where the primary replica is expected to be active. If the primary replica is not found here, the resource will attempt to find the host that holds the primary replica and connect to it.
    Puppet::Resource::Param(Any, 'dsc_primaryreplicasqlserver'),

    # PrimaryReplicaSQLInstanceName - Name of the SQL instance where the primary replica lives.
    Puppet::Resource::Param(Any, 'dsc_primaryreplicasqlinstancename'),

    # Ensure - Specifies if the availability group replica should be present or absent. Default is Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AvailabilityMode - Specifies the replica availability mode. Default is 'AsynchronousCommit'. Valid values are AsynchronousCommit, SynchronousCommit.
    Puppet::Resource::Param(Any, 'dsc_availabilitymode'),

    # BackupPriority - Specifies the desired priority of the replicas in performing backups. The acceptable values for this parameter are: integers from 0 through 100. Of the set of replicas which are online and available, the replica that has the highest priority performs the backup. Default is 50.
    Puppet::Resource::Param(Any, 'dsc_backuppriority'),

    # ConnectionModeInPrimaryRole - Specifies how the availability replica handles connections when in the primary role. Valid values are AllowAllConnections, AllowReadWriteConnections.
    Puppet::Resource::Param(Any, 'dsc_connectionmodeinprimaryrole'),

    # ConnectionModeInSecondaryRole - Specifies how the availability replica handles connections when in the secondary role. Valid values are AllowNoConnections, AllowReadIntentConnectionsOnly, AllowAllConnections.
    Puppet::Resource::Param(Any, 'dsc_connectionmodeinsecondaryrole'),

    # EndpointHostName - Specifies the hostname or IP address of the availability group replica endpoint. Default is the instance network name which is set in the code because the value can only be determined when connected to the SQL Instance.
    Puppet::Resource::Param(Any, 'dsc_endpointhostname'),

    # FailoverMode - Specifies the failover mode. Default is 'Manual'. Valid values are Automatic, Manual.
    Puppet::Resource::Param(Any, 'dsc_failovermode'),

    # ReadOnlyRoutingConnectionUrl - Specifies the fully-qualified domain name (FQDN) and port to use when routing to the replica for read only connections.
    Puppet::Resource::Param(Any, 'dsc_readonlyroutingconnectionurl'),

    # ReadOnlyRoutingList - Specifies an ordered list of replica server names that represent the probe sequence for connection director to use when redirecting read-only connections through this availability replica. This parameter applies if the availability replica is the current primary replica of the availability group.
    Puppet::Resource::Param(Any, 'dsc_readonlyroutinglist'),

    # SqlServerNetName - Output the NetName property from the SQL Server object. Used by Get-TargetResource
    Puppet::Resource::Param(Any, 'dsc_sqlservernetname'),

    # The specific backend to use for this `dsc_xsqlserveralwaysonavailabilitygroupreplica`
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
