# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebAppSiteUseAndDeletion resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebAppSiteUseAndDeletion/MSFT_SPWebAppSiteUseAndDeletion.schema.mof'
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
  'dsc_spwebappsiteuseanddeletion',
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

    # SendUnusedSiteCollectionNotifications - Should emails be sent to notify site owners of unused site collections
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_sendunusedsitecollectionnotifications'),

    # UnusedSiteNotificationPeriod - How many days should pass before a site is flagged as unused
    Puppet::Resource::Param(Any, 'dsc_unusedsitenotificationperiod'),

    # AutomaticallyDeleteUnusedSiteCollections - Should unused site collection be automatically deleted
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_automaticallydeleteunusedsitecollections'),

    # UnusedSiteNotificationsBeforeDeletion - How many days before an unused site is deleted should an email be sent to the owner
    Puppet::Resource::Param(Any, 'dsc_unusedsitenotificationsbeforedeletion'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebappsiteuseanddeletion`
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
