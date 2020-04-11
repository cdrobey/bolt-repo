# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSReplicationGroupConnection resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSReplicationGroupConnection/MSFT_xDFSReplicationGroupConnection.schema.mof'
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
  'dsc_xdfsreplicationgroupconnection',
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

    # SourceComputerName - The name of the Replication Group source computer for the connection. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.
    Puppet::Resource::Param(Any, 'dsc_sourcecomputername'),

    # DestinationComputerName - The name of the Replication Group destination computer for the connection. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.
    Puppet::Resource::Param(Any, 'dsc_destinationcomputername'),

    # Ensure - Specifies whether the DSF Replication Group connection should exist. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - A description for the DFS Replication Group connection.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # EnsureEnabled - Ensures that connection is either Enabled or Disabled. Valid values are Enabled, Disabled.
    Puppet::Resource::Param(Any, 'dsc_ensureenabled'),

    # EnsureRDCEnabled - Ensures remote differential compression is Enabled or Disabled. Valid values are Enabled, Disabled.
    Puppet::Resource::Param(Any, 'dsc_ensurerdcenabled'),

    # DomainName - The name of the AD Domain the DFS Replication Group connection should be in.
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # The specific backend to use for this `dsc_xdfsreplicationgroupconnection`
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
