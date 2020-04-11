# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC WindowsOptionalFeature resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_WindowsOptionalFeature/MSFT_WindowsOptionalFeature.schema.mof'
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
  'dsc_windowsoptionalfeature',
  [
    # Valid values are `exists?`, `enable`, `disable`.
    Puppet::Resource::Param(Enum['exists?', 'enable', 'disable'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Valid values are Enable, Disable.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Source
    Puppet::Resource::Param(Any, 'dsc_source'),

    # NoWindowsUpdateCheck
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_nowindowsupdatecheck'),

    # RemoveFilesOnDisable
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_removefilesondisable'),

    # LogLevel - Valid values are ErrorsOnly, ErrorsAndWarning, ErrorsAndWarningAndInformation.
    Puppet::Resource::Param(Any, 'dsc_loglevel'),

    # LogPath
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # CustomProperties
    Puppet::Resource::Param(Any, 'dsc_customproperties'),

    # Description
    Puppet::Resource::Param(Any, 'dsc_description'),

    # DisplayName
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # The specific backend to use for this `dsc_windowsoptionalfeature`
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
