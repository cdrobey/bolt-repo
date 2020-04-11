# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSqlServerInstall resource type.
# Automatically generated from
# 'xSqlPs/DSCResources/MSFT_xSqlServerInstall/MSFT_xSqlServerInstall.schema.mof'
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
  'dsc_xsqlserverinstall',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - The name of sql instance.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # SourcePath - The share path of sql server software.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # VersionID - The numeric version identifier for the instance to be installed
    Puppet::Resource::Param(Any, 'dsc_versionid'),

    # SourcePathCredential - The credential that vm could use to access net share of sql server software.
    Puppet::Resource::Param(Any, 'dsc_sourcepathcredential'),

    # Features - List of names of Sql Server features to install
    Puppet::Resource::Param(Any, 'dsc_features'),

    # SqlAdministratorCredential - Sql sa credential
    Puppet::Resource::Param(Any, 'dsc_sqladministratorcredential'),

    # UpdateEnabled - Specify whether SQL server setup should discover and include product updates.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_updateenabled'),

    # SvcAccount - Specify the startup account for the SQL server service.
    Puppet::Resource::Param(Any, 'dsc_svcaccount'),

    # SysAdminAccounts - Specify logins to be members of the sysadmin role.
    Puppet::Resource::Param(Any, 'dsc_sysadminaccounts'),

    # AgentSvcAccount - Specify the account for SQL server agent service.
    Puppet::Resource::Param(Any, 'dsc_agentsvcaccount'),

    # SqlCollation - Specify the default collation for SQL server
    Puppet::Resource::Param(Any, 'dsc_sqlcollation'),

    # InstallSqlDataDir - Specify the directory for SQL server system db files
    Puppet::Resource::Param(Any, 'dsc_installsqldatadir'),

    # SqlTempDBDir - Specify the directory for TempDB files.
    Puppet::Resource::Param(Any, 'dsc_sqltempdbdir'),

    # SqlUserDBDir - Specify the directory for UserDB data files.
    Puppet::Resource::Param(Any, 'dsc_sqluserdbdir'),

    # SqlUserDBLogDir - Specify the directory for UserDB log files.
    Puppet::Resource::Param(Any, 'dsc_sqluserdblogdir'),

    # SqlBackupDir - Specify the directory for backup files.
    Puppet::Resource::Param(Any, 'dsc_sqlbackupdir'),

    # The specific backend to use for this `dsc_xsqlserverinstall`
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
