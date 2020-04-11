# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerDatabasePermission resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerDatabasePermission/MSFT_xSQLServerDatabasePermission.schema.mof'
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
  'dsc_xsqlserverdatabasepermission',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - If the values should be present or absent. Valid values are 'Present' or 'Absent'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Database - The name of the database.
    Puppet::Resource::Param(Any, 'dsc_database'),

    # Name - The name of the user that should be granted or denied the permission.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # PermissionState - The state of the permission. Valid values are 'Grant' or 'Deny'. Valid values are Grant, Deny.
    Puppet::Resource::Param(Any, 'dsc_permissionstate'),

    # Permissions - The set of permissions for the SQL database.
    Puppet::Resource::Param(Any, 'dsc_permissions'),

    # SQLServer - The host name of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # The specific backend to use for this `dsc_xsqlserverdatabasepermission`
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
