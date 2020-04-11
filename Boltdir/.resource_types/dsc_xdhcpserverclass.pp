# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDhcpServerClass resource type.
# Automatically generated from
# 'xDhcpServer/DSCResources/MSFT_xDhcpServerClass/MSFT_xDhcpServerClass.schema.mof'
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
  'dsc_xdhcpserverclass',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Class Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Type - Class Type, Vendor or User Valid values are Vendor, User.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # AsciiData - Class Data, in ASCII format
    Puppet::Resource::Param(Any, 'dsc_asciidata'),

    # Description - Class Description
    Puppet::Resource::Param(Any, 'dsc_description'),

    # AddressFamily - Class address family. Currently needs to be IPv4 Valid values are IPv4.
    Puppet::Resource::Param(Any, 'dsc_addressfamily'),

    # Ensure - Whether the DHCP server Class should exist Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xdhcpserverclass`
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
