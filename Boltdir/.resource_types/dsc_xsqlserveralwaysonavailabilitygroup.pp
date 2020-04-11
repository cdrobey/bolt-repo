# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerAlwaysOnAvailabilityGroup resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerAlwaysOnAvailabilityGroup/MSFT_xSQLServerAlwaysOnAvailabilityGroup.schema.mof'
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
  'dsc_xsqlserveralwaysonavailabilitygroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the availability group.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # SQLServer - Hostname of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configued.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # Ensure - Specifies if the availability group should be present or absent. Default is Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AutomatedBackupPreference - Specifies the automated backup preference for the availability group. Default is None Valid values are Primary, SecondaryOnly, Secondary, None.
    Puppet::Resource::Param(Any, 'dsc_automatedbackuppreference'),

    # AvailabilityMode - Specifies the replica availability mode. Default is 'AsynchronousCommit'. Valid values are AsynchronousCommit, SynchronousCommit.
    Puppet::Resource::Param(Any, 'dsc_availabilitymode'),

    # BackupPriority - Specifies the desired priority of the replicas in performing backups. The acceptable values for this parameter are: integers from 0 through 100. Of the set of replicas which are online and available, the replica that has the highest priority performs the backup. Default is 50.
    Puppet::Resource::Param(Any, 'dsc_backuppriority'),

    # BasicAvailabilityGroup - Specifies the type of availability group is Basic. This is only available is SQL Server 2016 and later and is ignored when applied to previous versions.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_basicavailabilitygroup'),

    # ConnectionModeInPrimaryRole - Specifies how the availability replica handles connections when in the primary role. Valid values are AllowAllConnections, AllowReadWriteConnections.
    Puppet::Resource::Param(Any, 'dsc_connectionmodeinprimaryrole'),

    # ConnectionModeInSecondaryRole - Specifies how the availability replica handles connections when in the secondary role. Valid values are AllowNoConnections, AllowReadIntentConnectionsOnly, AllowAllConnections.
    Puppet::Resource::Param(Any, 'dsc_connectionmodeinsecondaryrole'),

    # EndpointHostName - Specifies the hostname or IP address of the availability group replica endpoint. Default is the instance network name.
    Puppet::Resource::Param(Any, 'dsc_endpointhostname'),

    # FailureConditionLevel - Specifies the automatic failover behavior of the availability group. Valid values are OnServerDown, OnServerUnresponsive, OnCriticalServerErrors, OnModerateServerErrors, OnAnyQualifiedFailureCondition.
    Puppet::Resource::Param(Any, 'dsc_failureconditionlevel'),

    # FailoverMode - Specifies the failover mode. Default is 'Manual'. Valid values are Automatic, Manual.
    Puppet::Resource::Param(Any, 'dsc_failovermode'),

    # HealthCheckTimeout - Specifies the length of time, in milliseconds, after which AlwaysOn availability groups declare an unresponsive server to be unhealthy. Default is 30000.
    Puppet::Resource::Param(Any, 'dsc_healthchecktimeout'),

    # The specific backend to use for this `dsc_xsqlserveralwaysonavailabilitygroup`
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
