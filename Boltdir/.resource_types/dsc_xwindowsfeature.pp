# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWindowsFeature resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsFeature/MSFT_xWindowsFeature.schema.mof'
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
  'dsc_xwindowsfeature',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the role or feature to install or uninstall.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Specifies whether the role or feature should be installed or uninstalled. To install the feature, set this property to Present. To uninstall the feature, set the property to Absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # IncludeAllSubFeature - Specifies whether the subfeatures of the main feature should also be installed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_includeallsubfeature'),

    # LogPath - The path to the log file to log this operation.
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # Credential - A credential, if needed, to install or uninstall the role or feature.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # DisplayName - The display name of the retrieved role or feature.
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # The specific backend to use for this `dsc_xwindowsfeature`
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
