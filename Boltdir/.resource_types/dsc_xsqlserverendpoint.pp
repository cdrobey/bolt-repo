# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerEndpoint resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerEndpoint/MSFT_xSQLServerEndpoint.schema.mof'
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
  'dsc_xsqlserverendpoint',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # EndpointName - The name of the endpoint.
    Puppet::Resource::Param(Any, 'dsc_endpointname'),

    # Ensure - If the endpoint should be present or absent. Default values is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Port - The network port the endpoint is listening on. Default value is 5022.
    Puppet::Resource::Param(Any, 'dsc_port'),

    # SQLServer - The host name of the SQL Server to be configured. Default value is $env:COMPUTERNAME.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # IpAddress - The network IP address the endpoint is listening on. Default the endpoint will listen on any valid IP address.
    Puppet::Resource::Param(Any, 'dsc_ipaddress'),

    # The specific backend to use for this `dsc_xsqlserverendpoint`
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
