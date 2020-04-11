# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSReplicationGroupMembership resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSReplicationGroupMembership/MSFT_xDFSReplicationGroupMembership.schema.mof'
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
  'dsc_xdfsreplicationgroupmembership',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GroupName - The name of the DFS Replication Group.
    Puppet::Resource::Param(Any, 'dsc_groupname'),

    # FolderName - The name of the DFS Replication Group Folder.
    Puppet::Resource::Param(Any, 'dsc_foldername'),

    # ComputerName - The computer name of the Replication Group member. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.
    Puppet::Resource::Param(Any, 'dsc_computername'),

    # ContentPath - The local content path for the DFS Replication Group Folder.
    Puppet::Resource::Param(Any, 'dsc_contentpath'),

    # StagingPath - The local staging path for the DFS Replication Group Folder.
    Puppet::Resource::Param(Any, 'dsc_stagingpath'),

    # ConflictAndDeletedPath - The local content and deleted path for the DFS Replication Group Folder.
    Puppet::Resource::Param(Any, 'dsc_conflictanddeletedpath'),

    # ReadOnly - Specify if this content path should be read only.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_readonly'),

    # PrimaryMember - Used to configure this as the Primary Member. Every folder must have at least one primary member for initial replication to take place.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_primarymember'),

    # DomainName - The name of the AD Domain the DFS Replication Group this replication group is in.
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # The specific backend to use for this `dsc_xdfsreplicationgroupmembership`
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
