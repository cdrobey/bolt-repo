# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDhcpServerScope resource type.
# Automatically generated from
# 'xDhcpServer/DSCResources/MSFT_xDhcpServerScope/MSFT_xDhcpServerScope.schema.mof'
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
  'dsc_xdhcpserverscope',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IPStartRange - Starting address to set for this scope
    Puppet::Resource::Param(Any, 'dsc_ipstartrange'),

    # IPEndRange - Ending address to set for this scope
    Puppet::Resource::Param(Any, 'dsc_ipendrange'),

    # Name - Name of DHCP Scope
    Puppet::Resource::Param(Any, 'dsc_name'),

    # SubnetMask - Subnet mask for the scope specified in IP address format
    Puppet::Resource::Param(Any, 'dsc_subnetmask'),

    # LeaseDuration - Time interval for which an IP address should be leased
    Puppet::Resource::Param(Any, 'dsc_leaseduration'),

    # State - Whether scope should be active or inactive Valid values are Active, Inactive.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # AddressFamily - Address family type Valid values are IPv4.
    Puppet::Resource::Param(Any, 'dsc_addressfamily'),

    # Ensure - Whether scope should be set or removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ScopeID - ScopeId for the given scope
    Puppet::Resource::Param(Any, 'dsc_scopeid'),

    # The specific backend to use for this `dsc_xdhcpserverscope`
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
