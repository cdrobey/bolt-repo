# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWindowsPackageCab resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsPackageCab/MSFT_xWindowsPackageCab.schema.mof'
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
  'dsc_xwindowspackagecab',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the package to install or uninstall.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Specifies whether the package should be installed or uninstalled. To install the package, set this property to Present. To uninstall the package, set the property to Absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SourcePath - The path to the cab file to install or uninstall the package from.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # LogPath - The path to a file to log the operation to.
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # The specific backend to use for this `dsc_xwindowspackagecab`
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
