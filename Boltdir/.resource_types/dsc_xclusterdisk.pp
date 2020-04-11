# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xClusterDisk resource type.
# Automatically generated from
# 'xFailOverCluster/DSCResources/MSFT_xClusterDisk/MSFT_xClusterDisk.schema.mof'
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
  'dsc_xclusterdisk',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Number - The disk number of the cluster disk.
    Puppet::Resource::Param(Any, 'dsc_number'),

    # Ensure - Define if the cluster disk should be added (Present) or removed (Absent). Default value is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Label - The disk label that should be assigned to the disk on the Failover Cluster disk resource.
    Puppet::Resource::Param(Any, 'dsc_label'),

    # The specific backend to use for this `dsc_xclusterdisk`
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
