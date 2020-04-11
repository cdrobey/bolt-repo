# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetworkTeam resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetworkTeam/MSFT_xNetworkTeam.schema.mof'
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
  'dsc_xnetworkteam',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies the name of the network team to create.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # TeamMembers - Specifies the network interfaces that should be a part of the network team. This is a comma-separated list.
    Puppet::Resource::Param(Any, 'dsc_teammembers'),

    # TeamingMode - Specifies the teaming mode configuration. Valid values are SwitchIndependent, LACP, Static.
    Puppet::Resource::Param(Any, 'dsc_teamingmode'),

    # LoadBalancingAlgorithm - Specifies the load balancing algorithm for the network team. Valid values are Dynamic, HyperVPort, IPAddresses, MacAddresses, TransportPorts.
    Puppet::Resource::Param(Any, 'dsc_loadbalancingalgorithm'),

    # Ensure - Specifies if the network team should be created or deleted. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xnetworkteam`
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
