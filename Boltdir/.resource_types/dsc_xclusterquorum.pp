# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xClusterQuorum resource type.
# Automatically generated from
# 'xFailOverCluster/DSCResources/MSFT_xClusterQuorum/MSFT_xClusterQuorum.schema.mof'
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
  'dsc_xclusterquorum',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes'. Valid values are Yes.
    Puppet::Resource::Param(Any, 'dsc_issingleinstance'),

    # Type - Quorum type to use. Can be set to either NodeMajority, NodeAndDiskMajority, NodeAndFileShareMajority or DiskOnly. Valid values are NodeMajority, NodeAndDiskMajority, NodeAndFileShareMajority, DiskOnly.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # Resource - The name of the disk or file share resource to use as witness. This parameter is optional if the quorum type is set to NodeMajority.
    Puppet::Resource::Param(Any, 'dsc_resource'),

    # The specific backend to use for this `dsc_xclusterquorum`
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
