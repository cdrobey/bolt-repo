# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xIisLogging resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xIisLogging/MSFT_xIisLogging.schema.mof'
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
  'dsc_xiislogging',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # LogPath - The directory to be used for logfiles
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # LogFlags - The W3C logging fields Valid values are Date, Time, ClientIP, UserName, SiteName, ComputerName, ServerIP, Method, UriStem, UriQuery, HttpStatus, Win32Status, BytesSent, BytesRecv, TimeTaken, ServerPort, UserAgent, Cookie, Referer, ProtocolVersion, Host, HttpSubStatus.
    Puppet::Resource::Param(Any, 'dsc_logflags'),

    # LogPeriod - How often the log file should rollover Valid values are Hourly, Daily, Weekly, Monthly, MaxSize.
    Puppet::Resource::Param(Any, 'dsc_logperiod'),

    # LogTruncateSize - How large the file should be before it is truncated
    Puppet::Resource::Param(Any, 'dsc_logtruncatesize'),

    # LoglocalTimeRollover - Use the localtime for file naming and rollover
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loglocaltimerollover'),

    # LogFormat - Format of the Logfiles. Only W3C supports LogFlags Valid values are IIS, W3C, NCSA.
    Puppet::Resource::Param(Any, 'dsc_logformat'),

    # The specific backend to use for this `dsc_xiislogging`
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
