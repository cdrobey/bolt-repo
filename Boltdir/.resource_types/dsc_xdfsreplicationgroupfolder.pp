# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSReplicationGroupFolder resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSReplicationGroupFolder/MSFT_xDFSReplicationGroupFolder.schema.mof'
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
  'dsc_xdfsreplicationgroupfolder',
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

    # Description - A description for the DFS Replication Group Folder.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # FilenameToExclude - An array of file names to exclude from replication.
    Puppet::Resource::Param(Any, 'dsc_filenametoexclude'),

    # DirectoryNameToExclude - An array of directory names to exclude from replication.
    Puppet::Resource::Param(Any, 'dsc_directorynametoexclude'),

    # DfsnPath - The DFS Namespace Path to this Replication Group folder is mapped to. This does NOT create the Namespace folders, it only sets the name in the folder object.
    Puppet::Resource::Param(Any, 'dsc_dfsnpath'),

    # DomainName - The name of the AD Domain the DFS Replication Group Folder will be in.
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # The specific backend to use for this `dsc_xdfsreplicationgroupfolder`
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
