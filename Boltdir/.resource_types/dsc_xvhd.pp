# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVHD resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVHD/MSFT_xVHD.schema.mof'
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
  'dsc_xvhd',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the VHD File
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Path - Folder where the VHD will be created
    Puppet::Resource::Param(Any, 'dsc_path'),

    # ParentPath - Parent VHD file path, for differencing disk
    Puppet::Resource::Param(Any, 'dsc_parentpath'),

    # MaximumSizeBytes - Maximum size of Vhd to be created
    Puppet::Resource::Param(Any, 'dsc_maximumsizebytes'),

    # Generation - Virtual disk format - Vhd or Vhdx Valid values are Vhd, Vhdx.
    Puppet::Resource::Param(Any, 'dsc_generation'),

    # Ensure - Should the VHD be created or deleted Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ID - Virtual Disk Identifier
    Puppet::Resource::Param(Any, 'dsc_id'),

    # Type - Type of Vhd - Dynamic, Fixed, Differencing Valid values are Dynamic, Fixed, Differencing.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # FileSizeBytes - Current size of the VHD
    Puppet::Resource::Param(Any, 'dsc_filesizebytes'),

    # IsAttached - Is the VHD attached to a VM or not
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isattached'),

    # The specific backend to use for this `dsc_xvhd`
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
