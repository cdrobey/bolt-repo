# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWindowsOptionalFeature resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsOptionalFeature/MSFT_xWindowsOptionalFeature.schema.mof'
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
  'dsc_xwindowsoptionalfeature',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the feature to enable or disable.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Specifies whether the feature should be enabled or disabled. To enable the feature, set this property to Present. To disable the feature, set the property to Absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # RemoveFilesOnDisable - Specifies that all files associated with the feature should be removed if the feature is being disabled.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_removefilesondisable'),

    # NoWindowsUpdateCheck - Specifies whether or not DISM contacts Windows Update (WU) when searching for the source files to enable the feature. If $true, DISM will not contact WU.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_nowindowsupdatecheck'),

    # LogLevel - The maximum output level to show in the log. Accepted values are: ErrorsOnly (only errors are logged), ErrorsAndWarning (errors and warnings are logged), and ErrorsAndWarningAndInformation (errors, warnings, and debug information are logged). Valid values are ErrorsOnly, ErrorsAndWarning, ErrorsAndWarningAndInformation.
    Puppet::Resource::Param(Any, 'dsc_loglevel'),

    # LogPath - The path to the log file to log this operation.
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # CustomProperties - The custom properties retrieved from the Windows optional feature as an array of strings.
    Puppet::Resource::Param(Any, 'dsc_customproperties'),

    # Description - The description retrieved from the Windows optional feature.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # DisplayName - The display name retrieved from the Windows optional feature.
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # The specific backend to use for this `dsc_xwindowsoptionalfeature`
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
