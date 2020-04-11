# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVMProcessor resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVMProcessor/MSFT_xVMProcessor.schema.mof'
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
  'dsc_xvmprocessor',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # VMName - Specifies the name of the virtual machine on which the processor is to be configured.
    Puppet::Resource::Param(Any, 'dsc_vmname'),

    # EnableHostResourceProtection - Specifies whether to enable host resource protection.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enablehostresourceprotection'),

    # ExposeVirtualizationExtensions - Specifies whether nested virtualization is enabled.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_exposevirtualizationextensions'),

    # HwThreadCountPerCore - Specifies the maximum thread core per processor core.
    Puppet::Resource::Param(Any, 'dsc_hwthreadcountpercore'),

    # Maximum - Specifies the maximum percentage of resources available to the virtual machine processor to be configured. Allowed values range from 0 to 100.
    Puppet::Resource::Param(Any, 'dsc_maximum'),

    # MaximumCountPerNumaNode - Specifies the maximum number of processors per NUMA node to be configured for the virtual machine.
    Puppet::Resource::Param(Any, 'dsc_maximumcountpernumanode'),

    # MaximumCountPerNumaSocket - Specifies the maximum number of sockets per NUMA node to be configured for the virtual machine.
    Puppet::Resource::Param(Any, 'dsc_maximumcountpernumasocket'),

    # RelativeWeight - Specifies the priority for allocating the physical computer's processing power to this virtual machine relative to others. Allowed values range from 1 to 10000.
    Puppet::Resource::Param(Any, 'dsc_relativeweight'),

    # Reserve - Specifies the percentage of processor resources to be reserved for this virtual machine. Allowed values range from 0 to 100.
    Puppet::Resource::Param(Any, 'dsc_reserve'),

    # ResourcePoolName - Specifies the name of the processor resource pool to be used.
    Puppet::Resource::Param(Any, 'dsc_resourcepoolname'),

    # CompatibilityForMigrationEnabled - Specifies whether the virtual processors features are to be limited for compatibility when migrating the virtual machine to another host.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_compatibilityformigrationenabled'),

    # CompatibilityForOlderOperatingSystemsEnabled - Specifies whether the virtual processor's features are to be limited for compatibility with older operating systems.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_compatibilityforolderoperatingsystemsenabled'),

    # RestartIfNeeded - If specified, shutdowns and restarts the VM if needed for property changes.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartifneeded'),

    # The specific backend to use for this `dsc_xvmprocessor`
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
