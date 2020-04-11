# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xMountImage resource type.
# Automatically generated from
# 'xStorage/DSCResources/MSFT_xMountImage/MSFT_xMountImage.schema.mof'
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
  'dsc_xmountimage',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ImagePath - Specifies the path of the VHD or ISO file.
    Puppet::Resource::Param(Any, 'dsc_imagepath'),

    # DriveLetter - Specifies the drive letter to mount this VHD or ISO to.
    Puppet::Resource::Param(Any, 'dsc_driveletter'),

    # StorageType - Specifies the storage type of a file. If the StorageType parameter is not specified, then the storage type is determined by file extension. Valid values are ISO, VHD, VHDx, VHDSet.
    Puppet::Resource::Param(Any, 'dsc_storagetype'),

    # Access - Allows a VHD file to be mounted in read-only or read-write mode. ISO files are mounted in read-only mode regardless of what parameter value you provide. Valid values are ReadOnly, ReadWrite.
    Puppet::Resource::Param(Any, 'dsc_access'),

    # Ensure - Determines whether the VHD or ISO should be mounted or not. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xmountimage`
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
