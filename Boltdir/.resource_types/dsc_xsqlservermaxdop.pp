# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerMaxDop resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerMaxDop/MSFT_xSQLServerMaxDop.schema.mof'
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
  'dsc_xsqlservermaxdop',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if MaxDop is configured (Present) or reset to default value (Absent) Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # DynamicAlloc - Flag to Dynamically allocate Maxdop based on Best Practices
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dynamicalloc'),

    # MaxDop - Numeric value to configure Maxdop to
    Puppet::Resource::Param(Any, 'dsc_maxdop'),

    # SQLServer - The host name of the SQL Server to be configured. Default value is '$env:COMPUTERNAME'.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # The specific backend to use for this `dsc_xsqlservermaxdop`
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
