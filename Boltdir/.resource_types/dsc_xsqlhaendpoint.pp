# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSqlHAEndPoint resource type.
# Automatically generated from
# 'xSqlPs/DSCResources/MSFT_xSqlHAEndPoint/MSFT_xSqlHAEndPoint.schema.mof'
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
  'dsc_xsqlhaendpoint',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - Name of Sql Instance.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # AllowedUser - Windows Account that could access the HA database mirroring endpoing.
    Puppet::Resource::Param(Any, 'dsc_alloweduser'),

    # Name - Unique name for HA database mirroring endpoint of the sql instance.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # PortNumber - The single port number(nnnn) on which the Sql HA to listen to.
    Puppet::Resource::Param(Any, 'dsc_portnumber'),

    # The specific backend to use for this `dsc_xsqlhaendpoint`
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
