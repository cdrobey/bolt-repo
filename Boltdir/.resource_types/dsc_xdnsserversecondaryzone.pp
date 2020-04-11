# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDnsServerSecondaryZone resource type.
# Automatically generated from
# 'xDnsServer/DSCResources/MSFT_xDnsServerSecondaryZone/MSFT_xDnsServerSecondaryZone.schema.mof'
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
  'dsc_xdnsserversecondaryzone',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the secondary zone
    Puppet::Resource::Param(Any, 'dsc_name'),

    # MasterServers - IP address or DNS name of the secondary DNS servers
    Puppet::Resource::Param(Any, 'dsc_masterservers'),

    # Ensure - Should this resource be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Type - Type of the DNS server zone
    Puppet::Resource::Param(Any, 'dsc_type'),

    # The specific backend to use for this `dsc_xdnsserversecondaryzone`
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
