# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchContentSource resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchContentSource/MSFT_SPSearchContentSource.schema.mof'
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
  'dsc_spsearchcontentsource',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the content source
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ServiceAppName - The name of the search service app that this content source exists within
    Puppet::Resource::Param(Any, 'dsc_serviceappname'),

    # ContentSourceType - The type of content source - currently only SharePoint, Website and File Shares are supported Valid values are SharePoint, Website, FileShare.
    Puppet::Resource::Param(Any, 'dsc_contentsourcetype'),

    # Addresses - A list of the addresses this content source includes
    Puppet::Resource::Param(Any, 'dsc_addresses'),

    # CrawlSetting - Should the crawler index everything, just the first site or page, or a custom depth (applies to websites only) Valid values are CrawlEverything, CrawlFirstOnly, Custom.
    Puppet::Resource::Param(Any, 'dsc_crawlsetting'),

    # ContinuousCrawl - Should this content source use continuous crawl (SharePoint sites only)
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_continuouscrawl'),

    # IncrementalSchedule - What is the incremental schedule for this content source
    Puppet::Resource::Param(Any, 'dsc_incrementalschedule'),

    # FullSchedule - What is the full schedule for this content source
    Puppet::Resource::Param(Any, 'dsc_fullschedule'),

    # Priority - What is the priority on this content source Valid values are Normal, High.
    Puppet::Resource::Param(Any, 'dsc_priority'),

    # LimitPageDepth - How many pages deep should the crawler go (-1 = unlimited, website sources only)
    Puppet::Resource::Param(Any, 'dsc_limitpagedepth'),

    # LimitServerHops - How many server hops should the crawler make (-1 = unlimtied, website sources only)
    Puppet::Resource::Param(Any, 'dsc_limitserverhops'),

    # Ensure - Present if the source should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Force - Specify true if DSC is allowed to delete and recreate a content source to apply the correct settings, otherwise false will just report errors if a change can not be applied.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchcontentsource`
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
