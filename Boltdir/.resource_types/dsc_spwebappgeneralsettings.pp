# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebAppGeneralSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebAppGeneralSettings/MSFT_SPWebAppGeneralSettings.schema.mof'
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
  'dsc_spwebappgeneralsettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the web app to set the general settings for
    Puppet::Resource::Param(Any, 'dsc_url'),

    # TimeZone - The timezone code to use for this web app. A full list is at https://msdn.microsoft.com/en-us/library/office/microsoft.sharepoint.spregionalsettings.timezones.aspx
    Puppet::Resource::Param(Any, 'dsc_timezone'),

    # Alerts - Should alerts be enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_alerts'),

    # AlertsLimit - What is the maximum number of alerts that a user can create in this web app
    Puppet::Resource::Param(Any, 'dsc_alertslimit'),

    # RSS - Should RSS feeds be enabled in this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_rss'),

    # BlogAPI - Should the Blog API be enabled in this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_blogapi'),

    # BlogAPIAuthenticated - Is authentication required for the blog API
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_blogapiauthenticated'),

    # BrowserFileHandling - What file handling mode should be used in this web app - strict or permissive Valid values are Strict, Permissive.
    Puppet::Resource::Param(Any, 'dsc_browserfilehandling'),

    # SecurityValidation - Is security validation enforced in this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_securityvalidation'),

    # SecurityValidationExpires - Does security validation expire after a set time
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_securityvalidationexpires'),

    # SecurityValidationTimeOutMinutes - Number of minutes security validation will expire if securityvalidationexpires is set
    Puppet::Resource::Param(Any, 'dsc_securityvalidationtimeoutminutes'),

    # RecycleBinEnabled - Is the recycle bin enabled in this web application
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recyclebinenabled'),

    # RecycleBinCleanupEnabled - Is automatic cleanup of the recycle bin enabled in this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recyclebincleanupenabled'),

    # RecycleBinRetentionPeriod - How many days does the recycle bin keep content for
    Puppet::Resource::Param(Any, 'dsc_recyclebinretentionperiod'),

    # SecondStageRecycleBinQuota - How much content does the second stage recycle bin keep content for
    Puppet::Resource::Param(Any, 'dsc_secondstagerecyclebinquota'),

    # MaximumUploadSize - What is the maximum file upload size for this web app (in MB)
    Puppet::Resource::Param(Any, 'dsc_maximumuploadsize'),

    # CustomerExperienceProgram - Should the customer experience program be enabled in this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_customerexperienceprogram'),

    # AllowOnlineWebPartCatalog - Should the Online WebPart Gallery be enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowonlinewebpartcatalog'),

    # SelfServiceSiteCreationEnabled - Should Self Service Site Creation be enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_selfservicesitecreationenabled'),

    # PresenceEnabled - Is Skype for Business presence enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_presenceenabled'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebappgeneralsettings`
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
