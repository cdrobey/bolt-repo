# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPExcelServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPExcelServiceApp/MSFT_SPExcelServiceApp.schema.mof'
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
  'dsc_spexcelserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ApplicationPool - The name of the application pool to run the service app in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # TrustedFileLocations - Trusted file locations for the service app
    Puppet::Resource::Param(Any, 'dsc_trustedfilelocations'),

    # CachingOfUnusedFilesEnable - Specifies that files that are no longer used by Excel Services Application can remain in the cache for later use.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cachingofunusedfilesenable'),

    # CrossDomainAccessAllowed - Specifies that trusted workbooks and data connection files can be requested and rendered by Web Parts or pages that reside in other HTTP domains.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_crossdomainaccessallowed'),

    # EncryptedUserConnectionRequired - Requires that encryption is used between the end-user and the server running Excel Services Application. Valid values are None, Connection.
    Puppet::Resource::Param(Any, 'dsc_encrypteduserconnectionrequired'),

    # ExternalDataConnectionLifetime - Specifies the maximum number of seconds that an external data connection can remain open in the connection pool.
    Puppet::Resource::Param(Any, 'dsc_externaldataconnectionlifetime'),

    # FileAccessMethod - Specifies the authentication method that Excel Services Application uses to retrieve files. Valid values are UseImpersonation, UseFileAccessAccount.
    Puppet::Resource::Param(Any, 'dsc_fileaccessmethod'),

    # LoadBalancingScheme - Specifies the load-balancing schema that is used by the Excel Services Application Web service application to send requests to different back-end Excel Services Application computers. Valid values are RoundRobin, Local, WorkbookURL.
    Puppet::Resource::Param(Any, 'dsc_loadbalancingscheme'),

    # MemoryCacheThreshold - Specifies the percentage of the maximum private bytes that can be allocated to inactive objects.
    Puppet::Resource::Param(Any, 'dsc_memorycachethreshold'),

    # PrivateBytesMax - Specifies the maximum private bytes, in megabytes, that are used by Excel Services Application.
    Puppet::Resource::Param(Any, 'dsc_privatebytesmax'),

    # SessionsPerUserMax - Specifies the maximum number of sessions allowed for a user.
    Puppet::Resource::Param(Any, 'dsc_sessionsperusermax'),

    # SiteCollectionAnonymousSessionsMax - Specifies the maximum number of anonymous sessions allowed per site collection.
    Puppet::Resource::Param(Any, 'dsc_sitecollectionanonymoussessionsmax'),

    # TerminateProcessOnAccessViolation - Terminates Excel Services Application when an access violation occurs in the process.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_terminateprocessonaccessviolation'),

    # ThrottleAccessViolationsPerSiteCollection - Specifies that if a workbook causes an access violation error on Excel Services Application, all files originating from that workbook's site collection are blocked from loading for the specified period (in seconds).
    Puppet::Resource::Param(Any, 'dsc_throttleaccessviolationspersitecollection'),

    # UnattendedAccountApplicationId - Specifies that the application ID that is used to look up the unattended service account credentials from the secure storage service that is specified by the UnattendedAccountSecureServiceAppName parameter.
    Puppet::Resource::Param(Any, 'dsc_unattendedaccountapplicationid'),

    # UnusedObjectAgeMax - Specifies the maximum amount of time, in minutes, that objects not currently used in a session are kept in the memory cache.
    Puppet::Resource::Param(Any, 'dsc_unusedobjectagemax'),

    # WorkbookCache - Specifies the local file system location of the cache that is used to store workbooks that are used by Excel Services Application.
    Puppet::Resource::Param(Any, 'dsc_workbookcache'),

    # WorkbookCacheSizeMax - Specifies the maximum allowable size, in megabytes, of an individual session.
    Puppet::Resource::Param(Any, 'dsc_workbookcachesizemax'),

    # Ensure - Present ensures service app exists, absent ensures it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spexcelserviceapp`
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
