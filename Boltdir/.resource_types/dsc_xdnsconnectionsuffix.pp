# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDnsConnectionSuffix resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xDnsConnectionSuffix/MSFT_xDnsConnectionSuffix.schema.mof'
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
  'dsc_xdnsconnectionsuffix',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InterfaceAlias - Alias of the network interface for which the DNS server address is set.
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # ConnectionSpecificSuffix - DNS connection-specific suffix to assign to the network interface.
    Puppet::Resource::Param(Any, 'dsc_connectionspecificsuffix'),

    # RegisterThisConnectionsAddress - Specifies that the IP address for this connection is to be registered.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_registerthisconnectionsaddress'),

    # UseSuffixWhenRegistering - Specifies that this host name and the connection specific suffix for this connection are to be registered.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usesuffixwhenregistering'),

    # Ensure - Ensure that the network interface connection-specific suffix is present or not. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xdnsconnectionsuffix`
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
