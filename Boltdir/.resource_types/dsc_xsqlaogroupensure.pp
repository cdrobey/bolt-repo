# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLAOGroupEnsure resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLAOGroupEnsure/MSFT_xSQLAOGroupEnsure.schema.mof'
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
  'dsc_xsqlaogroupensure',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Determines whether the availability group should be added or removed. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AvailabilityGroupName - Name for availability group.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupname'),

    # AvailabilityGroupNameListener - Listener name for availability group.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupnamelistener'),

    # AvailabilityGroupNameIP - List of IP addresses associated with listener.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupnameip'),

    # AvailabilityGroupSubMask - Network subnetmask for listener.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupsubmask'),

    # AvailabilityGroupPort - Port availability group should listen on.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupport'),

    # ReadableSecondary - Mode secondaries should operate under (None, ReadOnly, ReadIntent). Valid values are None, ReadOnly, ReadIntent.
    Puppet::Resource::Param(Any, 'dsc_readablesecondary'),

    # AutoBackupPreference - Where backups should be backed up from (Primary, Secondary). Valid values are Primary, Secondary.
    Puppet::Resource::Param(Any, 'dsc_autobackuppreference'),

    # BackupPriority - The percentage weight for backup prority (default 50).
    Puppet::Resource::Param(Any, 'dsc_backuppriority'),

    # EndPointPort - he TCP port for the SQL AG Endpoint (default 5022).
    Puppet::Resource::Param(Any, 'dsc_endpointport'),

    # SQLServer - The SQL Server for the database.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The SQL instance for the database.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # SetupCredential - Credential to be used to Grant Permissions on SQL Server, set this to $null to use Windows Authentication.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # The specific backend to use for this `dsc_xsqlaogroupensure`
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
