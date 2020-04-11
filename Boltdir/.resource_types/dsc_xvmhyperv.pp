# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVMHyperV resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVMHyperV/MSFT_xVMHyperV.schema.mof'
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
  'dsc_xvmhyperv',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the VM
    Puppet::Resource::Param(Any, 'dsc_name'),

    # VhdPath - VHD associated with the VM
    Puppet::Resource::Param(Any, 'dsc_vhdpath'),

    # SwitchName - Virtual switch(es) associated with the VM
    Puppet::Resource::Param(Any, 'dsc_switchname'),

    # State - State of the VM. Valid values are Running, Paused, Off.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # Path - Folder where the VM data will be stored
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Generation - Virtual machine generation
    Puppet::Resource::Param(Any, 'dsc_generation'),

    # StartupMemory - Startup RAM for the VM.
    Puppet::Resource::Param(Any, 'dsc_startupmemory'),

    # MinimumMemory - Minimum RAM for the VM. This enables dynamic memory.
    Puppet::Resource::Param(Any, 'dsc_minimummemory'),

    # MaximumMemory - Maximum RAM for the VM. This enable dynamic memory.
    Puppet::Resource::Param(Any, 'dsc_maximummemory'),

    # MACAddress - MAC address(es) of the VM NICs.
    Puppet::Resource::Param(Any, 'dsc_macaddress'),

    # ProcessorCount - Processor count for the VM
    Puppet::Resource::Param(Any, 'dsc_processorcount'),

    # WaitForIP - Waits for VM to get valid IP address.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_waitforip'),

    # RestartIfNeeded - If specified, shutdowns and restarts the VM as needed for property changes
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartifneeded'),

    # Ensure - Should the VM be created or deleted Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Notes - Notes about the VM.
    Puppet::Resource::Param(Any, 'dsc_notes'),

    # SecureBoot - Enable secure boot for Generation 2 VMs.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_secureboot'),

    # EnableGuestService - Enable Guest Service Interface for the VM.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableguestservice'),

    # ID - VM unique ID
    Puppet::Resource::Param(Any, 'dsc_id'),

    # Status - Status of the VM
    Puppet::Resource::Param(Any, 'dsc_status'),

    # CPUUsage - CPU Usage of the VM
    Puppet::Resource::Param(Any, 'dsc_cpuusage'),

    # MemoryAssigned - Memory assigned to the VM
    Puppet::Resource::Param(Any, 'dsc_memoryassigned'),

    # Uptime - Uptime of the VM
    Puppet::Resource::Param(Any, 'dsc_uptime'),

    # CreationTime - Creation time of the VM
    Puppet::Resource::Param(Any, 'dsc_creationtime'),

    # HasDynamicMemory - Does VM has dynamic memory enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_hasdynamicmemory'),

    # NetworkAdapters - Network adapters' IP addresses of the VM
    Puppet::Resource::Param(Any, 'dsc_networkadapters'),

    # The specific backend to use for this `dsc_xvmhyperv`
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
