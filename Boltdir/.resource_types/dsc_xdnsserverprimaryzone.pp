# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDnsServerPrimaryZone resource type.
# Automatically generated from
# 'xDnsServer/DSCResources/MSFT_xDnsServerPrimaryZone/MSFT_xDnsServerPrimaryZone.schema.mof'
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
  'dsc_xdnsserverprimaryzone',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - DNS Server primary zone name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ZoneFile - DNS Server primary zone file
    Puppet::Resource::Param(Any, 'dsc_zonefile'),

    # DynamicUpdate - Dynamic zone update option Valid values are None, NonsecureAndSecure.
    Puppet::Resource::Param(Any, 'dsc_dynamicupdate'),

    # Ensure - Whether the DNS zone should be available or removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xdnsserverprimaryzone`
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