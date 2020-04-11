# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDiskAccessPath resource type.
# Automatically generated from
# 'xStorage/DSCResources/MSFT_xDiskAccessPath/MSFT_xDiskAccessPath.schema.mof'
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
  'dsc_xdiskaccesspath',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # AccessPath - Specifies the access path folder to the assign the disk volume to.
    Puppet::Resource::Param(Any, 'dsc_accesspath'),

    # DiskId - Specifies the disk identifier for the disk to modify.
    Puppet::Resource::Param(Any, 'dsc_diskid'),

    # DiskIdType - Specifies the identifier type the DiskId contains. Defaults to Number. Valid values are Number, UniqueId.
    Puppet::Resource::Param(Any, 'dsc_diskidtype'),

    # Size - Specifies the size of new volume.
    Puppet::Resource::Param(Any, 'dsc_size'),

    # FSLabel - Define volume label if required.
    Puppet::Resource::Param(Any, 'dsc_fslabel'),

    # AllocationUnitSize - Specifies the allocation unit size to use when formatting the volume.
    Puppet::Resource::Param(Any, 'dsc_allocationunitsize'),

    # FSFormat - Specifies the file system format of the new volume. Valid values are NTFS, ReFS.
    Puppet::Resource::Param(Any, 'dsc_fsformat'),

    # The specific backend to use for this `dsc_xdiskaccesspath`
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
