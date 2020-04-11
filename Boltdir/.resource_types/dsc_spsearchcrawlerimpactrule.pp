# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchCrawlerImpactRule resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchCrawlerImpactRule/MSFT_SPSearchCrawlerImpactRule.schema.mof'
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
  'dsc_spsearchcrawlerimpactrule',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServiceAppName - Search Service Application Name
    Puppet::Resource::Param(Any, 'dsc_serviceappname'),

    # Name - The Site for the crawl impact rule
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Behavior - The Behavior (RequestLimit or WaitTime) for this crawl impact rule
    Puppet::Resource::Param(Any, 'dsc_behavior'),

    # RequestLimit - The RequestLimit setting for the crawl impact rule
    Puppet::Resource::Param(Any, 'dsc_requestlimit'),

    # WaitTime - The WaitTime setting for the crawl impact rule
    Puppet::Resource::Param(Any, 'dsc_waittime'),

    # Ensure - Ensure the crawl rule is Present or Absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchcrawlerimpactrule`
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
