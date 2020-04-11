# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerAlias resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerAlias/MSFT_xSQLServerAlias.schema.mof'
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
  'dsc_xsqlserveralias',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of Alias (e.g. svr01\inst01).
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Protocol - Protocol to use when connecting. Valid values are 'TCP' or 'NP' (Named Pipes). Default value is 'TCP'. Valid values are TCP, NP.
    Puppet::Resource::Param(Any, 'dsc_protocol'),

    # ServerName - The SQL Server you are aliasing (the netbios name or FQDN).
    Puppet::Resource::Param(Any, 'dsc_servername'),

    # TcpPort - The TCP port SQL is listening on. Only used when protocol is set to 'TCP'. Default value is port 1433.
    Puppet::Resource::Param(Any, 'dsc_tcpport'),

    # UseDynamicTcpPort - The UseDynamicTcpPort specify that the Net-Library will determine the port dynamically. The port specified in Port number will not be used. Default value is '$false'.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usedynamictcpport'),

    # PipeName - Named Pipes path from the Get-TargetResource method.
    Puppet::Resource::Param(Any, 'dsc_pipename'),

    # Ensure - Determines whether the alias should be added or removed. Default value is 'Present' Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xsqlserveralias`
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
