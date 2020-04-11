# This file was automatically generated on 2020-04-10 21:03:25 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPBlobCacheSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPBlobCacheSettings/MSFT_SPBlobCacheSettings.schema.mof'
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
  'dsc_spblobcachesettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebAppUrl - The URL of the web application
    Puppet::Resource::Param(Any, 'dsc_webappurl'),

    # Zone - The zone of the web application for which blob cache has to be configured Valid values are Default, Intranet, Internet, Custom, Extranet.
    Puppet::Resource::Param(Any, 'dsc_zone'),

    # EnableCache - Specify if the blob cache has to be enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enablecache'),

    # Location - The location where the blob cache has to store its files
    Puppet::Resource::Param(Any, 'dsc_location'),

    # MaxSizeInGB - The maximum size (in GB) of disk space the blob cache is allowed to use
    Puppet::Resource::Param(Any, 'dsc_maxsizeingb'),

    # MaxAgeInSeconds - The maximum age (in seconds) that a browser caches a blob
    Puppet::Resource::Param(Any, 'dsc_maxageinseconds'),

    # FileTypes - Specify the file types that must be stored by the blob cache
    Puppet::Resource::Param(Any, 'dsc_filetypes'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spblobcachesettings`
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
