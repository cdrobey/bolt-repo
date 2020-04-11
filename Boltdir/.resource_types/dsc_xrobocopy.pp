# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRobocopy resource type.
# Automatically generated from
# 'xRobocopy/DSCResources/MSFT_xRobocopy/MSFT_xRobocopy.schema.mof'
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
  'dsc_xrobocopy',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Source - Source Directory, Drive or UNC path.
    Puppet::Resource::Param(Any, 'dsc_source'),

    # Destination - Destination Dir, Drive or UNC path.
    Puppet::Resource::Param(Any, 'dsc_destination'),

    # Files - File(s) to copy  (names/wildcards: default is all files).
    Puppet::Resource::Param(Any, 'dsc_files'),

    # Retry - Number of Retries on failed copies: default 1 million.
    Puppet::Resource::Param(Any, 'dsc_retry'),

    # Wait - Wait time between retries: default is 30 seconds.
    Puppet::Resource::Param(Any, 'dsc_wait'),

    # SubdirectoriesIncludingEmpty - Copy subdirectories, including Empty ones.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_subdirectoriesincludingempty'),

    # Restartable - Copy files in restartable mode.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartable'),

    # MultiThreaded - Do multi-threaded copies with n threads (default 8). N must be at least 1 and not greater than 128. This option is incompatible with the /IPG and /EFSRAW options. Redirect output using /LOG option for better performance.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_multithreaded'),

    # ExcludeFiles - Exclude Files matching given names/paths/wildcards.
    Puppet::Resource::Param(Any, 'dsc_excludefiles'),

    # LogOutput - Output status to LOG file.
    Puppet::Resource::Param(Any, 'dsc_logoutput'),

    # AppendLog - Determine whether to overwrite log file or append.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_appendlog'),

    # AdditionalArgs - Robocopy has MANY configuration options. Too many to present them all as DSC parameters effectively. Use this option to set additional parameters. Each parameter should be a separate array member. This array will be combined with main argument array. For a list of options run Robocopy /??? in a shell window.
    Puppet::Resource::Param(Any, 'dsc_additionalargs'),

    # Ensure - Will indicate whether Destination is in sync with Source Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xrobocopy`
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
