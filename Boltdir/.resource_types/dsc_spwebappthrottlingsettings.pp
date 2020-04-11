# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebAppThrottlingSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebAppThrottlingSettings/MSFT_SPWebAppThrottlingSettings.schema.mof'
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
  'dsc_spwebappthrottlingsettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the web application
    Puppet::Resource::Param(Any, 'dsc_url'),

    # ListViewThreshold - What should the list view threshold for this site be set to
    Puppet::Resource::Param(Any, 'dsc_listviewthreshold'),

    # AllowObjectModelOverride - Should object model code be able to be override the list view threshold
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowobjectmodeloverride'),

    # AdminThreshold - What is the list view threshold for site administrators
    Puppet::Resource::Param(Any, 'dsc_adminthreshold'),

    # ListViewLookupThreshold - What is the maximum number of lookup fields in a single list view
    Puppet::Resource::Param(Any, 'dsc_listviewlookupthreshold'),

    # HappyHourEnabled - Should the happy hour window be enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_happyhourenabled'),

    # HappyHour - The time window for happy hour
    Puppet::Resource::Param(Any, 'dsc_happyhour'),

    # UniquePermissionThreshold - What is the limit for unique permissions on a single object in this web app
    Puppet::Resource::Param(Any, 'dsc_uniquepermissionthreshold'),

    # RequestThrottling - Is request throttling enabled on this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_requestthrottling'),

    # ChangeLogEnabled - Is the change log enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_changelogenabled'),

    # ChangeLogExpiryDays - How many days does the change log store data for
    Puppet::Resource::Param(Any, 'dsc_changelogexpirydays'),

    # EventHandlersEnabled - Are event handlers enabled in the web application
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_eventhandlersenabled'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebappthrottlingsettings`
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
