# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVMHost resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVMHost/MSFT_xVMHost.schema.mof'
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
  'dsc_xvmhost',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes'. Valid values are Yes.
    Puppet::Resource::Param(Any, 'dsc_issingleinstance'),

    # EnableEnhancedSessionMode - Indicates whether users can use enhanced mode when they connect to virtual machines on this server by using Virtual Machine Connection.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableenhancedsessionmode'),

    # FibreChannelWwnn - Specifies the default value of the World Wide Node Name on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_fibrechannelwwnn'),

    # FibreChannelWwpnMaximum - Specifies the maximum value that can be used to generate World Wide Port Names on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_fibrechannelwwpnmaximum'),

    # FibreChannelWwpnMinimum - Specifies the minimum value that can be used to generate the World Wide Port Names on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_fibrechannelwwpnminimum'),

    # MacAddressMaximum - Specifies the maximum MAC address using a valid hexadecimal value.
    Puppet::Resource::Param(Any, 'dsc_macaddressmaximum'),

    # MacAddressMinimum - Specifies the minimum MAC address using a valid hexadecimal value.
    Puppet::Resource::Param(Any, 'dsc_macaddressminimum'),

    # MaximumStorageMigrations - Specifies the maximum number of storage migrations that can be performed at the same time on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_maximumstoragemigrations'),

    # MaximumVirtualMachineMigrations - Specifies the maximum number of live migrations that can be performed at the same time on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_maximumvirtualmachinemigrations'),

    # NumaSpanningEnabled - Specifies whether virtual machines on the Hyper-V host can use resources from more than one NUMA node.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_numaspanningenabled'),

    # ResourceMeteringSaveIntervalMinute - Specifies how often the Hyper-V host saves the data that tracks resource usage. The range is a minimum of 60 minutes to a maximum of 1440 (24 hours).
    Puppet::Resource::Param(Any, 'dsc_resourcemeteringsaveintervalminute'),

    # UseAnyNetworkForMigration - Specifies how networks are selected for incoming live migration traffic.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_useanynetworkformigration'),

    # VirtualHardDiskPath - Specifies the default folder to store virtual hard disks on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_virtualharddiskpath'),

    # VirtualMachineMigrationAuthenticationType - Specifies the type of authentication to be used for live migrations. The acceptable values for this parameter are 'Kerberos' and 'CredSSP'. Valid values are CredSSP, Kerberos.
    Puppet::Resource::Param(Any, 'dsc_virtualmachinemigrationauthenticationtype'),

    # VirtualMachineMigrationPerformanceOption - Specifies the performance option to use for live migration. The acceptable values for this parameter are 'TCPIP', 'Compression' and 'SMB'. Valid values are TCPIP, Compression, SMB.
    Puppet::Resource::Param(Any, 'dsc_virtualmachinemigrationperformanceoption'),

    # VirtualMachinePath - Specifies the default folder to store virtual machine configuration files on the Hyper-V host.
    Puppet::Resource::Param(Any, 'dsc_virtualmachinepath'),

    # The specific backend to use for this `dsc_xvmhost`
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
