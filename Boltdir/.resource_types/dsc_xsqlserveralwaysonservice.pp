# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerAlwaysOnService resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerAlwaysOnService/MSFT_xSQLServerAlwaysOnService.schema.mof'
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
  'dsc_xsqlserveralwaysonservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - HADR is Present (enabled) or Absent (disabled) Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SQLServer - The hostname of the SQL Server to be configured
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # RestartTimeout - The length of time, in seconds, to wait for the service to restart. Default is 120 seconds.
    Puppet::Resource::Param(Any, 'dsc_restarttimeout'),

    # The specific backend to use for this `dsc_xsqlserveralwaysonservice`
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
