# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetConnectionProfile resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetConnectionProfile/MSFT_xNetConnectionProfile.schema.mof'
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
  'dsc_xnetconnectionprofile',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InterfaceAlias - Specifies the alias for the Interface that is being changed.
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # IPv4Connectivity - Sets the Network Category for the interface. Valid values are Disconnected, NoTraffic, Subnet, LocalNetwork, Internet.
    Puppet::Resource::Param(Any, 'dsc_ipv4connectivity'),

    # IPv6Connectivity - Specifies the IPv4 Connection Value. Valid values are Disconnected, NoTraffic, Subnet, LocalNetwork, Internet.
    Puppet::Resource::Param(Any, 'dsc_ipv6connectivity'),

    # NetworkCategory - Specifies the IPv6 Connection Value. Valid values are Public, Private.
    Puppet::Resource::Param(Any, 'dsc_networkcategory'),

    # The specific backend to use for this `dsc_xnetconnectionprofile`
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
