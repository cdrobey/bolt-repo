# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xMySqlDatabase resource type.
# Automatically generated from
# 'xMySql/DscResources/MSFT_xMySqlDatabase/MSFT_xMySqlDatabase.schema.mof'
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
  'dsc_xmysqldatabase',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DatabaseName - Name of the database.
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # Ensure - Should the database be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # RootCredential - The root credential that is used to install MySql server.
    Puppet::Resource::Param(Any, 'dsc_rootcredential'),

    # MySqlVersion - MYSql Version Number
    Puppet::Resource::Param(Any, 'dsc_mysqlversion'),

    # The specific backend to use for this `dsc_xmysqldatabase`
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
