# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerDatabaseRole resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerDatabaseRole/MSFT_xSQLServerDatabaseRole.schema.mof'
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
  'dsc_xsqlserverdatabaserole',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - If 'Present' (the default value) then the login (user) will be added to the role(s). If 'Absent' then the login (user) will be removed from the role(s). Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name - The name of the login that will become a member, or removed as a member, of the role(s).
    Puppet::Resource::Param(Any, 'dsc_name'),

    # SQLServer - The host name of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # Database - The database in which the login (user) and role(s) exist.
    Puppet::Resource::Param(Any, 'dsc_database'),

    # Role - One or more roles to which the login (user) will be added or removed.
    Puppet::Resource::Param(Any, 'dsc_role'),

    # The specific backend to use for this `dsc_xsqlserverdatabaserole`
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
