# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDnsServerZoneTransfer resource type.
# Automatically generated from
# 'xDnsServer/DSCResources/MSFT_xDnsServerZoneTransfer/MSFT_xDnsServerZoneTransfer.schema.mof'
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
  'dsc_xdnsserverzonetransfer',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the DNS zone
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Type - Type of transfer allowed Valid values are None, Any, Named, Specific.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # SecondaryServer - IP address or DNS name of DNS servers where zone information can be transfered
    Puppet::Resource::Param(Any, 'dsc_secondaryserver'),

    # The specific backend to use for this `dsc_xdnsserverzonetransfer`
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
