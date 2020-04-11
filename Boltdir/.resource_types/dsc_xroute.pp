# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRoute resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xRoute/MSFT_xRoute.schema.mof'
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
  'dsc_xroute',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InterfaceAlias - Specifies the alias of a network interface.
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # AddressFamily - Specifies the IP address family. Valid values are IPv4, IPv6.
    Puppet::Resource::Param(Any, 'dsc_addressfamily'),

    # DestinationPrefix - Specifies a destination prefix of an IP route. A destination prefix consists of an IP address prefix and a prefix length, separated by a slash (/).
    Puppet::Resource::Param(Any, 'dsc_destinationprefix'),

    # NextHop - Specifies the next hop for the IP route.
    Puppet::Resource::Param(Any, 'dsc_nexthop'),

    # Ensure - Specifies whether the route should exist. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # RouteMetric - Specifies an integer route metric for an IP route.
    Puppet::Resource::Param(Any, 'dsc_routemetric'),

    # Publish - Specifies the publish setting of an IP route. Valid values are No, Yes, Age.
    Puppet::Resource::Param(Any, 'dsc_publish'),

    # PreferredLifetime - Specifies a preferred lifetime in seconds of an IP route.
    Puppet::Resource::Param(Any, 'dsc_preferredlifetime'),

    # The specific backend to use for this `dsc_xroute`
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
