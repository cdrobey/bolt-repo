# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDNSServerAddress resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xDNSServerAddress/MSFT_xDNSServerAddress.schema.mof'
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
  'dsc_xdnsserveraddress',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InterfaceAlias - Alias of the network interface for which the DNS server address is set.
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # AddressFamily - IP address family. Valid values are IPv4, IPv6.
    Puppet::Resource::Param(Any, 'dsc_addressfamily'),

    # Address - The desired DNS Server address(es). Exclude to enable DHCP.
    Puppet::Resource::Param(Any, 'dsc_address'),

    # Validate - Requires that the DNS Server addresses be validated if they are updated. It will cause the resource to throw a 'A general error occurred that is not covered by a more specific error code.' error if set to True and specified DNS Servers are not accessible.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_validate'),

    # The specific backend to use for this `dsc_xdnsserveraddress`
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
