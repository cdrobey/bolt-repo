# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSReplicationGroup resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSReplicationGroup/MSFT_xDFSReplicationGroup.schema.mof'
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
  'dsc_xdfsreplicationgroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GroupName - The name of the DFS Replication Group.
    Puppet::Resource::Param(Any, 'dsc_groupname'),

    # Ensure - Specifies whether the DSF Replication Group should exist. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - A description for the DFS Replication Group.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Members - A list of computers that are members of this Replication Group. These can be specified using either the ComputerName or FQDN name for each member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.
    Puppet::Resource::Param(Any, 'dsc_members'),

    # Folders - A list of folders that are replicated in this Replication Group.
    Puppet::Resource::Param(Any, 'dsc_folders'),

    # Topology - This allows a replication topology to assign to the Replication Group. It defaults to Manual, which will not automatically create a topology. If set to Fullmesh, a full mesh topology between all members will be created. Valid values are Fullmesh, Manual.
    Puppet::Resource::Param(Any, 'dsc_topology'),

    # ContentPaths - An array of DFS Replication Group Content Paths to use for each of the Folders. This can have one entry for each Folder in the Folders parameter and should be set in th same order. If any entry is not blank then the Content Paths will need to be set manually by using the xDFSReplicationGroupMembership resource.
    Puppet::Resource::Param(Any, 'dsc_contentpaths'),

    # DomainName - The AD domain the Replication Group should created in.
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # The specific backend to use for this `dsc_xdfsreplicationgroup`
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
