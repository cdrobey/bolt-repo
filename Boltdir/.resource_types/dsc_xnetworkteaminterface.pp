# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetworkTeamInterface resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetworkTeamInterface/MSFT_xNetworkTeamInterface.schema.mof'
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
  'dsc_xnetworkteaminterface',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies the name of the network team interface to create.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # TeamName - Specifies the name of the network team on which this particular interface should exist.
    Puppet::Resource::Param(Any, 'dsc_teamname'),

    # VlanID - Specifies VlanID to be set on network team interface.
    Puppet::Resource::Param(Any, 'dsc_vlanid'),

    # Ensure - Specifies if the network team interface should be created or deleted. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xnetworkteaminterface`
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
