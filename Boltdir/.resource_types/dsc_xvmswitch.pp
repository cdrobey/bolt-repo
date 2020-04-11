# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVMSwitch resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVMSwitch/MSFT_xVMSwitch.schema.mof'
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
  'dsc_xvmswitch',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the VM Switch
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Type - Type of switch Valid values are External, Internal, Private.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # NetAdapterName - Network adapter name(s) for external switch type
    Puppet::Resource::Param(Any, 'dsc_netadaptername'),

    # AllowManagementOS - Specify if the VM host has access to the physical NIC
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowmanagementos'),

    # EnableEmbeddedTeaming - Should embedded NIC teaming be used (Windows Server 2016 only)
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableembeddedteaming'),

    # BandwidthReservationMode - Type of Bandwidth Reservation Mode to use for the switch Valid values are Default, Weight, Absolute, None, NA.
    Puppet::Resource::Param(Any, 'dsc_bandwidthreservationmode'),

    # Ensure - Whether switch should be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Id - Unique ID for the switch
    Puppet::Resource::Param(Any, 'dsc_id'),

    # NetAdapterInterfaceDescription - Description of the network interface
    Puppet::Resource::Param(Any, 'dsc_netadapterinterfacedescription'),

    # The specific backend to use for this `dsc_xvmswitch`
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
