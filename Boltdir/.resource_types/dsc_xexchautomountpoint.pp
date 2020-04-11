# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchAutoMountPoint resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchAutoMountPoint/MSFT_xExchAutoMountPoint.schema.mof'
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
  'dsc_xexchautomountpoint',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # AutoDagDatabasesRootFolderPath
    Puppet::Resource::Param(Any, 'dsc_autodagdatabasesrootfolderpath'),

    # AutoDagVolumesRootFolderPath
    Puppet::Resource::Param(Any, 'dsc_autodagvolumesrootfolderpath'),

    # DiskToDBMap
    Puppet::Resource::Param(Any, 'dsc_disktodbmap'),

    # SpareVolumeCount
    Puppet::Resource::Param(Any, 'dsc_sparevolumecount'),

    # EnsureExchangeVolumeMountPointIsLast
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ensureexchangevolumemountpointislast'),

    # CreateSubfolders
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_createsubfolders'),

    # FileSystem - Valid values are NTFS, REFS.
    Puppet::Resource::Param(Any, 'dsc_filesystem'),

    # MinDiskSize
    Puppet::Resource::Param(Any, 'dsc_mindisksize'),

    # PartitioningScheme - Valid values are MBR, GPT.
    Puppet::Resource::Param(Any, 'dsc_partitioningscheme'),

    # UnitSize
    Puppet::Resource::Param(Any, 'dsc_unitsize'),

    # VolumePrefix
    Puppet::Resource::Param(Any, 'dsc_volumeprefix'),

    # The specific backend to use for this `dsc_xexchautomountpoint`
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
