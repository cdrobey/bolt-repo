# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xClusterPreferredOwner resource type.
# Automatically generated from
# 'xFailOverCluster/DSCResources/MSFT_xClusterPreferredOwner/MSFT_xClusterPreferredOwner.schema.mof'
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
  'dsc_xclusterpreferredowner',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ClusterGroup - Name of the cluster group.
    Puppet::Resource::Param(Any, 'dsc_clustergroup'),

    # ClusterName - Name of the cluster.
    Puppet::Resource::Param(Any, 'dsc_clustername'),

    # Nodes - The nodes to set as owners.
    Puppet::Resource::Param(Any, 'dsc_nodes'),

    # ClusterResources - he resources to set preferred owners on.
    Puppet::Resource::Param(Any, 'dsc_clusterresources'),

    # Ensure - If the preferred owners should be present or absent. Default value is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xclusterpreferredowner`
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
