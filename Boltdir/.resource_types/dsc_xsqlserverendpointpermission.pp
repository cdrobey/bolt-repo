# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerEndpointPermission resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerEndpointPermission/MSFT_xSQLServerEndpointPermission.schema.mof'
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
  'dsc_xsqlserverendpointpermission',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # NodeName - The host name of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_nodename'),

    # Ensure - If the permission should be present or absent. Default value is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name - The name of the endpoint.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Principal - The login to which permission will be set.
    Puppet::Resource::Param(Any, 'dsc_principal'),

    # Permission - The permission to set for the login. Valid value for permission are only CONNECT. Valid values are CONNECT.
    Puppet::Resource::Param(Any, 'dsc_permission'),

    # The specific backend to use for this `dsc_xsqlserverendpointpermission`
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
