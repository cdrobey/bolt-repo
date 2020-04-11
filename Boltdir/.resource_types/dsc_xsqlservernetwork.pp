# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerNetwork resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerNetwork/MSFT_xSQLServerNetwork.schema.mof'
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
  'dsc_xsqlservernetwork',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - SQL Server instance name of which network protocol should be configured
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # ProtocolName - Network protocol name that should be configured Valid values are tcp.
    Puppet::Resource::Param(Any, 'dsc_protocolname'),

    # IsEnabled - Is network protocol should be enabled or disabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isenabled'),

    # TCPDynamicPorts - If dynamic ports are used should be set to 0, otherwise leave empty Valid values are 0.
    Puppet::Resource::Param(Any, 'dsc_tcpdynamicports'),

    # TCPPort - Sets static port for TCP/IP
    Puppet::Resource::Param(Any, 'dsc_tcpport'),

    # RestartService - Controls if affected SQL Service should be restarted automatically
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartservice'),

    # The specific backend to use for this `dsc_xsqlservernetwork`
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
