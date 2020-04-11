# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWinEventLog resource type.
# Automatically generated from
# 'xWinEventLog/DSCResources/MSFT_xWinEventLog/MSFT_xWinEventLog.schema.mof'
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
  'dsc_xwineventlog',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # LogName - Name of the event log
    Puppet::Resource::Param(Any, 'dsc_logname'),

    # MaximumSizeInBytes - sizethat the event log file is allowed to be When the file reaches this maximum size it is considered full
    Puppet::Resource::Param(Any, 'dsc_maximumsizeinbytes'),

    # IsEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isenabled'),

    # LogMode - Valid values are AutoBackup, Circular, Retain.
    Puppet::Resource::Param(Any, 'dsc_logmode'),

    # SecurityDescriptor
    Puppet::Resource::Param(Any, 'dsc_securitydescriptor'),

    # LogFilePath
    Puppet::Resource::Param(Any, 'dsc_logfilepath'),

    # The specific backend to use for this `dsc_xwineventlog`
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
