# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerSetup resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerSetup/MSFT_xSQLServerSetup.schema.mof'
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
  'dsc_xsqlserversetup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Action - The action to be performed. Default value is 'Install'. Valid values are Install, InstallFailoverCluster, AddNode, PrepareFailoverCluster, CompleteFailoverCluster.
    Puppet::Resource::Param(Any, 'dsc_action'),

    # SourcePath - The path to the root of the source files for installation. I.e and UNC path to a shared resource. Environment variables can be used in the path.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SetupCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # SourceCredential - Credentials used to access the path set in the parameter 'SourcePath'.
    Puppet::Resource::Param(Any, 'dsc_sourcecredential'),

    # SuppressReboot - Suppresses reboot.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_suppressreboot'),

    # ForceReboot - Forces reboot.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_forcereboot'),

    # Features - SQL features to be installed.
    Puppet::Resource::Param(Any, 'dsc_features'),

    # InstanceName - Name of the SQL instance to be installed.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # InstanceID - SQL instance ID, if different from InstanceName.
    Puppet::Resource::Param(Any, 'dsc_instanceid'),

    # ProductKey - Product key for licensed installations.
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # UpdateEnabled - Enabled updates during installation.
    Puppet::Resource::Param(Any, 'dsc_updateenabled'),

    # UpdateSource - Path to the source of updates to be applied during installation.
    Puppet::Resource::Param(Any, 'dsc_updatesource'),

    # SQMReporting - Enable customer experience reporting.
    Puppet::Resource::Param(Any, 'dsc_sqmreporting'),

    # ErrorReporting - Enable error reporting.
    Puppet::Resource::Param(Any, 'dsc_errorreporting'),

    # InstallSharedDir - Installation path for shared SQL files.
    Puppet::Resource::Param(Any, 'dsc_installshareddir'),

    # InstallSharedWOWDir - Installation path for x86 shared SQL files.
    Puppet::Resource::Param(Any, 'dsc_installsharedwowdir'),

    # InstanceDir - Installation path for SQL instance files.
    Puppet::Resource::Param(Any, 'dsc_instancedir'),

    # SQLSvcAccount - Service account for the SQL service.
    Puppet::Resource::Param(Any, 'dsc_sqlsvcaccount'),

    # SQLSvcAccountUsername - Output username for the SQL service.
    Puppet::Resource::Param(Any, 'dsc_sqlsvcaccountusername'),

    # AgtSvcAccount - Service account for the SQL Agent service.
    Puppet::Resource::Param(Any, 'dsc_agtsvcaccount'),

    # AgtSvcAccountUsername - Output username for the SQL Agent service.
    Puppet::Resource::Param(Any, 'dsc_agtsvcaccountusername'),

    # SQLCollation - Collation for SQL.
    Puppet::Resource::Param(Any, 'dsc_sqlcollation'),

    # SQLSysAdminAccounts - Array of accounts to be made SQL administrators.
    Puppet::Resource::Param(Any, 'dsc_sqlsysadminaccounts'),

    # SecurityMode - Security mode to apply to the SQL Server instance.
    Puppet::Resource::Param(Any, 'dsc_securitymode'),

    # SAPwd - SA password, if SecurityMode is set to 'SQL'.
    Puppet::Resource::Param(Any, 'dsc_sapwd'),

    # InstallSQLDataDir - Root path for SQL database files.
    Puppet::Resource::Param(Any, 'dsc_installsqldatadir'),

    # SQLUserDBDir - Path for SQL database files.
    Puppet::Resource::Param(Any, 'dsc_sqluserdbdir'),

    # SQLUserDBLogDir - Path for SQL log files.
    Puppet::Resource::Param(Any, 'dsc_sqluserdblogdir'),

    # SQLTempDBDir - Path for SQL TempDB files.
    Puppet::Resource::Param(Any, 'dsc_sqltempdbdir'),

    # SQLTempDBLogDir - Path for SQL TempDB log files.
    Puppet::Resource::Param(Any, 'dsc_sqltempdblogdir'),

    # SQLBackupDir - Path for SQL backup files.
    Puppet::Resource::Param(Any, 'dsc_sqlbackupdir'),

    # FTSvcAccount - Service account for the Full Text service.
    Puppet::Resource::Param(Any, 'dsc_ftsvcaccount'),

    # FTSvcAccountUsername - Output username for the Full Text service.
    Puppet::Resource::Param(Any, 'dsc_ftsvcaccountusername'),

    # RSSvcAccount - Service account for Reporting Services service.
    Puppet::Resource::Param(Any, 'dsc_rssvcaccount'),

    # RSSvcAccountUsername - Output username for the Reporting Services service.
    Puppet::Resource::Param(Any, 'dsc_rssvcaccountusername'),

    # ASSvcAccount - Service account for Analysis Services service.
    Puppet::Resource::Param(Any, 'dsc_assvcaccount'),

    # ASSvcAccountUsername - Output username for the Analysis Services service.
    Puppet::Resource::Param(Any, 'dsc_assvcaccountusername'),

    # ASCollation - Collation for Analysis Services.
    Puppet::Resource::Param(Any, 'dsc_ascollation'),

    # ASSysAdminAccounts - Array of accounts to be made Analysis Services admins.
    Puppet::Resource::Param(Any, 'dsc_assysadminaccounts'),

    # ASDataDir - Path for Analysis Services data files.
    Puppet::Resource::Param(Any, 'dsc_asdatadir'),

    # ASLogDir - Path for Analysis Services log files.
    Puppet::Resource::Param(Any, 'dsc_aslogdir'),

    # ASBackupDir - Path for Analysis Services backup files.
    Puppet::Resource::Param(Any, 'dsc_asbackupdir'),

    # ASTempDir - Path for Analysis Services temp files.
    Puppet::Resource::Param(Any, 'dsc_astempdir'),

    # ASConfigDir - Path for Analysis Services config.
    Puppet::Resource::Param(Any, 'dsc_asconfigdir'),

    # ISSvcAccount - Service account for Integration Services service.
    Puppet::Resource::Param(Any, 'dsc_issvcaccount'),

    # ISSvcAccountUsername - Output username for the Integration Services service.
    Puppet::Resource::Param(Any, 'dsc_issvcaccountusername'),

    # BrowserSvcStartupType - Specifies the startup mode for SQL Server Browser service. Valid values are Automatic, Disabled, Manual.
    Puppet::Resource::Param(Any, 'dsc_browsersvcstartuptype'),

    # FailoverClusterGroupName - The name of the resource group to create for the clustered SQL Server instance. Default is 'SQL Server (InstanceName)'.
    Puppet::Resource::Param(Any, 'dsc_failoverclustergroupname'),

    # FailoverClusterIPAddress - Array of IP Addresses to be assigned to the clustered SQL Server instance.
    Puppet::Resource::Param(Any, 'dsc_failoverclusteripaddress'),

    # FailoverClusterNetworkName - Host name to be assigend to the clustered SQL Server instance.
    Puppet::Resource::Param(Any, 'dsc_failoverclusternetworkname'),

    # The specific backend to use for this `dsc_xsqlserversetup`
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
