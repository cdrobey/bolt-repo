# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xMySqlUser resource type.
# Automatically generated from
# 'xMySql/DscResources/MSFT_xMySqlUser/MSFT_xMySqlUser.schema.mof'
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
  'dsc_xmysqluser',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # UserName - Name of MySQL user to create or remove.
    Puppet::Resource::Param(Any, 'dsc_username'),

    # UserCredential - Credential for MySQL user.
    Puppet::Resource::Param(Any, 'dsc_usercredential'),

    # RootCredential - MySQL root credential used to create a user.
    Puppet::Resource::Param(Any, 'dsc_rootcredential'),

    # Ensure - Ensure MySQL user is present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # MySqlVersion - MySQL Version Number
    Puppet::Resource::Param(Any, 'dsc_mysqlversion'),

    # The specific backend to use for this `dsc_xmysqluser`
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
