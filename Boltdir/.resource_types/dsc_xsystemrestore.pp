# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSystemRestore resource type.
# Automatically generated from
# 'xWindowsRestore/DSCResources/xSystemRestore/xSystemRestore.schema.mof'
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
  'dsc_xsystemrestore',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Indicates that the computer restore is enabled or is disabled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Drive - Specifies the file system drives. Enter one or more file system drive letters, each followed by a colon and a backslash and enclosed in quotation marks, such as 'C:' or 'D:'.
    Puppet::Resource::Param(Any, 'dsc_drive'),

    # The specific backend to use for this `dsc_xsystemrestore`
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
