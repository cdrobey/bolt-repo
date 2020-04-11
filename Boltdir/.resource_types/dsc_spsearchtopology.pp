# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchTopology resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchTopology/MSFT_SPSearchTopology.schema.mof'
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
  'dsc_spsearchtopology',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServiceAppName - The name of the search service application for this topology
    Puppet::Resource::Param(Any, 'dsc_serviceappname'),

    # Admin - A list of servers that will run the admin component
    Puppet::Resource::Param(Any, 'dsc_admin'),

    # Crawler - A list of servers that will run the crawler component
    Puppet::Resource::Param(Any, 'dsc_crawler'),

    # ContentProcessing - A list of servers that will run the content processing component
    Puppet::Resource::Param(Any, 'dsc_contentprocessing'),

    # AnalyticsProcessing - A list of servers that will run the analytics processing component
    Puppet::Resource::Param(Any, 'dsc_analyticsprocessing'),

    # QueryProcessing - A list of servers that will run the query processing component
    Puppet::Resource::Param(Any, 'dsc_queryprocessing'),

    # IndexPartition - A list of servers that will host the first (0) index partition
    Puppet::Resource::Param(Any, 'dsc_indexpartition'),

    # FirstPartitionDirectory - The local directory servers will use to store the first index partition
    Puppet::Resource::Param(Any, 'dsc_firstpartitiondirectory'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchtopology`
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
