# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSNamespaceFolder resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSNamespaceFolder/MSFT_xDFSNamespaceFolder.schema.mof'
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
  'dsc_xdfsnamespacefolder',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - Specifies a path for the root of a DFS namespace.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # TargetPath - Specifies a path for a root target of the DFS namespace.
    Puppet::Resource::Param(Any, 'dsc_targetpath'),

    # Ensure - Specifies if the DFS Namespace root should exist. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - The description of the DFS Namespace.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # EnableInsiteReferrals - Indicates whether a DFS namespace server provides a client only with referrals that are in the same site as the client.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableinsitereferrals'),

    # EnableTargetFailback - Indicates whether a DFS namespace uses target failback.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabletargetfailback'),

    # ReferralPriorityClass - Specifies the target priority class for a DFS namespace root. Valid values are Global-High, SiteCost-High, SiteCost-Normal, SiteCost-Low, Global-Low.
    Puppet::Resource::Param(Any, 'dsc_referralpriorityclass'),

    # ReferralPriorityRank - Specifies the priority rank, as an integer, for a root target of the DFS namespace.
    Puppet::Resource::Param(Any, 'dsc_referralpriorityrank'),

    # TimeToLiveSec - Specifies a TTL interval, in seconds, for referrals.
    Puppet::Resource::Param(Any, 'dsc_timetolivesec'),

    # State
    Puppet::Resource::Param(Any, 'dsc_state'),

    # The specific backend to use for this `dsc_xdfsnamespacefolder`
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
