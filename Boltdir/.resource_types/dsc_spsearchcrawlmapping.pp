# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchCrawlMapping resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchCrawlMapping/MSFT_SPSearchCrawlMapping.schema.mof'
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
  'dsc_spsearchcrawlmapping',
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

    # Url - Source URI for the crawl mapping
    Puppet::Resource::Param(Any, 'dsc_url'),

    # Target - Target URI for the crawl mapping
    Puppet::Resource::Param(Any, 'dsc_target'),

    # Ensure - Ensure the crawl mapping is Present or Absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchcrawlmapping`
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