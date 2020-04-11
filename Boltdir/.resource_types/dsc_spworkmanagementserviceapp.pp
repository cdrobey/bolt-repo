# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWorkManagementServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWorkManagementServiceApp/MSFT_SPWorkManagementServiceApp.schema.mof'
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
  'dsc_spworkmanagementserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the work management service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # Ensure - Present to ensure the app exists, Absent to ensure it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ApplicationPool - The name of the application pool this will run in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # MinimumTimeBetweenEwsSyncSubscriptionSearches - The minimum amount of time bween EWS sync subscription searches
    Puppet::Resource::Param(Any, 'dsc_minimumtimebetweenewssyncsubscriptionsearches'),

    # MinimumTimeBetweenProviderRefreshes - The minimum time between provider refreshes
    Puppet::Resource::Param(Any, 'dsc_minimumtimebetweenproviderrefreshes'),

    # MinimumTimeBetweenSearchQueries - The minimum time between search queries
    Puppet::Resource::Param(Any, 'dsc_minimumtimebetweensearchqueries'),

    # NumberOfSubscriptionSyncsPerEwsSyncRun - The number of subscription syncronisations per EWS sync run
    Puppet::Resource::Param(Any, 'dsc_numberofsubscriptionsyncsperewssyncrun'),

    # NumberOfUsersEwsSyncWillProcessAtOnce - How many users will EWS calls include at once
    Puppet::Resource::Param(Any, 'dsc_numberofusersewssyncwillprocessatonce'),

    # NumberOfUsersPerEwsSyncBatch - How many users are included in a batch for EWS
    Puppet::Resource::Param(Any, 'dsc_numberofusersperewssyncbatch'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spworkmanagementserviceapp`
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
