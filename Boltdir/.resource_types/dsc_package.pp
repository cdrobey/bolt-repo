# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC Package resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_PackageResource/MSFT_PackageResource.schema.mof'
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
  'dsc_package',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Path
    Puppet::Resource::Param(Any, 'dsc_path'),

    # ProductId
    Puppet::Resource::Param(Any, 'dsc_productid'),

    # Arguments
    Puppet::Resource::Param(Any, 'dsc_arguments'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # ReturnCode
    Puppet::Resource::Param(Any, 'dsc_returncode'),

    # LogPath
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # PackageDescription
    Puppet::Resource::Param(Any, 'dsc_packagedescription'),

    # Publisher
    Puppet::Resource::Param(Any, 'dsc_publisher'),

    # InstalledOn
    Puppet::Resource::Param(Any, 'dsc_installedon'),

    # Size
    Puppet::Resource::Param(Any, 'dsc_size'),

    # Version
    Puppet::Resource::Param(Any, 'dsc_version'),

    # Installed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_installed'),

    # The specific backend to use for this `dsc_package`
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
