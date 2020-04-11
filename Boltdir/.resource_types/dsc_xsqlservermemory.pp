# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerMemory resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerMemory/MSFT_xSQLServerMemory.schema.mof'
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
  'dsc_xsqlservermemory',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # SQLServer - The host name of the SQL Server to be configured. Default value is $env:COMPUTERNAME.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # Ensure - When set to 'Present' then min and max memory will be set to either the value in parameter MinMemory and MaxMemory or dynamically configured when parameter DynamicAlloc is set to $true. When set to 'Absent' min and max memory will be set to default values. Default value is Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # DynamicAlloc - If set to $true then max memory will be dynamically configured. When this is set parameter is set to $true, the parameter MaxMemory must be set to $null or not be configured. Default value is $false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dynamicalloc'),

    # MinMemory - Minimum amount of memory, in MB, in the buffer pool used by the instance of SQL Server.
    Puppet::Resource::Param(Any, 'dsc_minmemory'),

    # MaxMemory - Maximum amount of memory, in MB, in the buffer pool used by the instance of SQL Server.
    Puppet::Resource::Param(Any, 'dsc_maxmemory'),

    # The specific backend to use for this `dsc_xsqlservermemory`
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
