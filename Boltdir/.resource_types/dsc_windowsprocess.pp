# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC WindowsProcess resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_ProcessResource/MSFT_ProcessResource.schema.mof'
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
  'dsc_windowsprocess',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Arguments
    Puppet::Resource::Param(Any, 'dsc_arguments'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # StandardOutputPath
    Puppet::Resource::Param(Any, 'dsc_standardoutputpath'),

    # StandardErrorPath
    Puppet::Resource::Param(Any, 'dsc_standarderrorpath'),

    # StandardInputPath
    Puppet::Resource::Param(Any, 'dsc_standardinputpath'),

    # WorkingDirectory
    Puppet::Resource::Param(Any, 'dsc_workingdirectory'),

    # PagedMemorySize
    Puppet::Resource::Param(Any, 'dsc_pagedmemorysize'),

    # NonPagedMemorySize
    Puppet::Resource::Param(Any, 'dsc_nonpagedmemorysize'),

    # VirtualMemorySize
    Puppet::Resource::Param(Any, 'dsc_virtualmemorysize'),

    # HandleCount
    Puppet::Resource::Param(Any, 'dsc_handlecount'),

    # ProcessId
    Puppet::Resource::Param(Any, 'dsc_processid'),

    # The specific backend to use for this `dsc_windowsprocess`
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