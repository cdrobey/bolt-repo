# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDatabaseLogin resource type.
# Automatically generated from
# 'xDatabase/DSCResources/MSFT_xDatabaseLogin/MSFT_xDatabaseLogin.schema.mof'
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
  'dsc_xdatabaselogin',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # LoginName
    Puppet::Resource::Param(Any, 'dsc_loginname'),

    # LoginPassword
    Puppet::Resource::Param(Any, 'dsc_loginpassword'),

    # SqlAuthType - Valid values are Windows, SQL.
    Puppet::Resource::Param(Any, 'dsc_sqlauthtype'),

    # SqlServer - Sql Server Name
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SqlConnectionCredential
    Puppet::Resource::Param(Any, 'dsc_sqlconnectioncredential'),

    # The specific backend to use for this `dsc_xdatabaselogin`
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
