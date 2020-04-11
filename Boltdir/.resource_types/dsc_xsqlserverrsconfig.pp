# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerRSConfig resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerRSConfig/MSFT_xSQLServerRSConfig.schema.mof'
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
  'dsc_xsqlserverrsconfig',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - Name of the SQL Server Reporting Services instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # RSSQLServer - Name of the SQL Server to host the Reporting Service database.
    Puppet::Resource::Param(Any, 'dsc_rssqlserver'),

    # RSSQLInstanceName - Name of the SQL Server instance to host the Reporting Service database.
    Puppet::Resource::Param(Any, 'dsc_rssqlinstancename'),

    # SQLAdminCredential - Credential to be used to perform the configuration.
    Puppet::Resource::Param(Any, 'dsc_sqladmincredential'),

    # IsInitialized - Is the Reporting Services instance initialized.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isinitialized'),

    # The specific backend to use for this `dsc_xsqlserverrsconfig`
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
