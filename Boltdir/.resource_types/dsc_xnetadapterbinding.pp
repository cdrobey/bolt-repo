# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetAdapterBinding resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetAdapterBinding/MSFT_xNetAdapterBinding.schema.mof'
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
  'dsc_xnetadapterbinding',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InterfaceAlias - Specifies the alias of a network interface. Supports the use of '*'.
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # ComponentId - Specifies the underlying name of the transport or filter in the following form - ms_xxxx, such as ms_tcpip.
    Puppet::Resource::Param(Any, 'dsc_componentid'),

    # State - Specifies if the component ID for the Interface should be Enabled or Disabled. Valid values are Enabled, Disabled.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # CurrentState - Returns the current state of the component ID for the Interfaces. Valid values are Enabled, Disabled, Mixed.
    Puppet::Resource::Param(Any, 'dsc_currentstate'),

    # The specific backend to use for this `dsc_xnetadapterbinding`
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
