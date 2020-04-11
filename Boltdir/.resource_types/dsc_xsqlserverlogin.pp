# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerLogin resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerLogin/MSFT_xSQLServerLogin.schema.mof'
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
  'dsc_xsqlserverlogin',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - The specified login is Present or Absent. Default is Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name - The name of the login.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # LoginType - The type of login to be created. If LoginType is 'WindowsUser' or 'WindowsGroup' then provide the name in the format DOMAIN
    # ame. Default is WindowsUser. Unsupported login types are Certificate, AsymmetricKey, ExternalUser, and ExternalGroup. Valid values are WindowsUser, WindowsGroup, SqlLogin, Certificate, AsymmetricKey, ExternalUser, ExternalGroup.
    Puppet::Resource::Param(Any, 'dsc_logintype'),

    # SQLServer - The hostname of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # LoginCredential - If LoginType is 'SqlLogin' then a PSCredential is needed for the password to the login.
    Puppet::Resource::Param(Any, 'dsc_logincredential'),

    # LoginMustChangePassword - Specifies if the login is required to have its password change on the next login. Only applies to SQL Logins. Default is $true.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loginmustchangepassword'),

    # LoginPasswordExpirationEnabled - Specifies if the login password is required to expire in accordance to the operating system security policy. Only applies to SQL Logins. Default is $true.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loginpasswordexpirationenabled'),

    # LoginPasswordPolicyEnforced - Specifies if the login password is required to conform to the password policy specified in the system security policy. Only applies to SQL Logins. Default is $true.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loginpasswordpolicyenforced'),

    # The specific backend to use for this `dsc_xsqlserverlogin`
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
