# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerRSSecureConnectionLevel resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerRSSecureConnectionLevel/MSFT_xSQLServerRSSecureConnectionLevel.schema.mof'
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
  'dsc_xsqlserverrssecureconnectionlevel',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - SQL instance to set secure connection level for.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # SecureConnectionLevel - SQL Server Reporting Service secure connection level.
    Puppet::Resource::Param(Any, 'dsc_secureconnectionlevel'),

    # SQLAdminCredential - Credential with administrative permissions to the SQL instance.
    Puppet::Resource::Param(Any, 'dsc_sqladmincredential'),

    # The specific backend to use for this `dsc_xsqlserverrssecureconnectionlevel`
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
