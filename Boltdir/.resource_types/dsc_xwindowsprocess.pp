# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWindowsProcess resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsProcess/MSFT_xWindowsProcess.schema.mof'
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
  'dsc_xwindowsprocess',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - The full path or file name to the process executable to start or stop.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Arguments - A string of arguments to pass to the process executable. Pass in an empty string if no arguments are needed.
    Puppet::Resource::Param(Any, 'dsc_arguments'),

    # Credential - The credential to run the process under.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Indicates whether the process is present (running) or absent (not running). Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # StandardOutputPath - The path to write the standard output stream to.
    Puppet::Resource::Param(Any, 'dsc_standardoutputpath'),

    # StandardErrorPath - The path to write the standard error stream to.
    Puppet::Resource::Param(Any, 'dsc_standarderrorpath'),

    # StandardInputPath - The path to receive standard input from.
    Puppet::Resource::Param(Any, 'dsc_standardinputpath'),

    # WorkingDirectory - The directory to run the processes under.
    Puppet::Resource::Param(Any, 'dsc_workingdirectory'),

    # PagedMemorySize - The amount of paged memory, in bytes, allocated for the process.
    Puppet::Resource::Param(Any, 'dsc_pagedmemorysize'),

    # NonPagedMemorySize - The amount of nonpaged memory, in bytes, allocated for the process.
    Puppet::Resource::Param(Any, 'dsc_nonpagedmemorysize'),

    # VirtualMemorySize - The amount of virtual memory, in bytes, allocated for the process.
    Puppet::Resource::Param(Any, 'dsc_virtualmemorysize'),

    # HandleCount - The number of handles opened by the process.
    Puppet::Resource::Param(Any, 'dsc_handlecount'),

    # ProcessId - The unique identifier of the process.
    Puppet::Resource::Param(Any, 'dsc_processid'),

    # ProcessCount - The number of instances of the given process that are currently running.
    Puppet::Resource::Param(Any, 'dsc_processcount'),

    # The specific backend to use for this `dsc_xwindowsprocess`
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
