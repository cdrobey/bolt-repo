# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetAdapterName resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetAdapterName/MSFT_xNetAdapterName.schema.mof'
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
  'dsc_xnetadaptername',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # NewName - Specifies the new name of the network adapter.
    Puppet::Resource::Param(Any, 'dsc_newname'),

    # Name - This is the name of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # PhysicalMediaType - This is the media type of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_physicalmediatype'),

    # Status - This is the status of the network adapter to find. Valid values are Up, Disconnected, Disabled.
    Puppet::Resource::Param(Any, 'dsc_status'),

    # MacAddress - This is the MAC address of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_macaddress'),

    # InterfaceDescription - This is the interface description of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_interfacedescription'),

    # InterfaceIndex - This is the interface index of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_interfaceindex'),

    # InterfaceGuid - This is the interface GUID of the network adapter to find.
    Puppet::Resource::Param(Any, 'dsc_interfaceguid'),

    # DriverDescription - This is the driver description of the network adapter.
    Puppet::Resource::Param(Any, 'dsc_driverdescription'),

    # InterfaceNumber - This is the interface number of the network adapter if more than one are returned by the parameters.
    Puppet::Resource::Param(Any, 'dsc_interfacenumber'),

    # IgnoreMultipleMatchingAdapters - This switch will suppress an error occurring if more than one matching adapter matches the parameters passed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ignoremultiplematchingadapters'),

    # The specific backend to use for this `dsc_xnetadaptername`
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
