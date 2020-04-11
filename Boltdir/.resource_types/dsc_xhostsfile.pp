# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xHostsFile resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xHostsFile/MSFT_xHostsFile.schema.mof'
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
  'dsc_xhostsfile',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # HostName - Specifies the name of the computer that will be mapped to an IP address.
    Puppet::Resource::Param(Any, 'dsc_hostname'),

    # IPAddress - Specifies the IP Address that should be mapped to the host name.
    Puppet::Resource::Param(Any, 'dsc_ipaddress'),

    # Ensure - Specifies if the hosts file entry should be created or deleted. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xhostsfile`
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
