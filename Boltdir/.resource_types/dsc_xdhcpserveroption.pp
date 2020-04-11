# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDhcpServerOption resource type.
# Automatically generated from
# 'xDhcpServer/DSCResources/MSFT_xDhcpServerOption/MSFT_xDhcpServerOption.schema.mof'
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
  'dsc_xdhcpserveroption',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ScopeID - ScopeId for which options are set
    Puppet::Resource::Param(Any, 'dsc_scopeid'),

    # DnsServerIPAddress - IP address of DNS Servers
    Puppet::Resource::Param(Any, 'dsc_dnsserveripaddress'),

    # DnsDomain - Domain name of DNS Server
    Puppet::Resource::Param(Any, 'dsc_dnsdomain'),

    # Router - IP address of the router/default gateway.
    Puppet::Resource::Param(Any, 'dsc_router'),

    # AddressFamily - Address family type Valid values are IPv4.
    Puppet::Resource::Param(Any, 'dsc_addressfamily'),

    # Ensure - Whether option should be set or removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xdhcpserveroption`
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
