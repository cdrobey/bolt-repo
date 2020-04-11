# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC OfficeOnlineServerFarm resource type.
# Automatically generated from
# 'OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerFarm/MSFT_OfficeOnlineServerFarm.schema.mof'
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
  'dsc_officeonlineserverfarm',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # AllowCEIP - Enables Customer Experience Improvement Program (CEIP) reporting on all servers in the Office Web Apps Server farm
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowceip'),

    # AllowHttp - Indicates that IIS sites should be provisioned on port 80 for HTTP access. Use AllowHTTP only in environments where all computers require IPSEC (full encryption) or in test environments that do not contain sensitive files.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowhttp'),

    # AllowHttpSecureStoreConnections - Indicates that secure store connections can be made by using non-SSL connections (such as HTTP). The default is False.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowhttpsecurestoreconnections'),

    # CacheLocation - Specifies the location of the global disk cache that is used to store rendered image files.
    Puppet::Resource::Param(Any, 'dsc_cachelocation'),

    # CacheSizeInGB - Specifies the maximum size of the global disk cache in gigabytes.
    Puppet::Resource::Param(Any, 'dsc_cachesizeingb'),

    # CertificateName - Specifies the friendly name of the certificate that Office Web Apps Server uses to create HTTPS bindings.
    Puppet::Resource::Param(Any, 'dsc_certificatename'),

    # ClipartEnabled - Enables support for inserting clip art from Office.com into Office documents. This feature requires server-to-web communication, configured either directly or by using a proxy that you specify by using the Proxy parameter.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_clipartenabled'),

    # DocumentInfoCacheSize - Specifies the maximum number of document conversion records that are stored in a memory cache.
    Puppet::Resource::Param(Any, 'dsc_documentinfocachesize'),

    # EditingEnabled - Enables support for editing in the browser. The default is False. Only set to True if you have the appropriate licensing to use the editing functionality.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_editingenabled'),

    # ExcelAllowExternalData - Enables the refresh of supported external data in Excel Web App workbooks where workbooks contain connections to external data. The default is True.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_excelallowexternaldata'),

    # ExcelConnectionLifetime - Specifies the duration, in seconds, of external data connections for Excel Web App. The default is 1800 seconds.
    Puppet::Resource::Param(Any, 'dsc_excelconnectionlifetime'),

    # ExcelExternalDataCacheLifetime - Specifes the duration, in seconds, of the external data cache lifetime in Excel Web App. The default is 300 seconds.
    Puppet::Resource::Param(Any, 'dsc_excelexternaldatacachelifetime'),

    # ExcelPrivateBytesMax - Specifies the maximum private bytes, in megabytes, used by Excel Web App. When set to -1, the maximum private bytes use 50 percent of physical memory on the computer.
    Puppet::Resource::Param(Any, 'dsc_excelprivatebytesmax'),

    # ExcelRequestDurationMax - Specifies the maximum duration, in seconds, for a single request in a session. After this time elapses, the request times out.
    Puppet::Resource::Param(Any, 'dsc_excelrequestdurationmax'),

    # ExcelSessionTimeout - Specifies the time, in seconds, that a session remains active in Excel Web App when there is no user activity.
    Puppet::Resource::Param(Any, 'dsc_excelsessiontimeout'),

    # ExcelUdfsAllowed - Activates user-defined functions for use with Web Excel.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_exceludfsallowed'),

    # ExcelWarnOnDataRefresh - Turns off or on the warning dialog displayed when data refreshes in Excel Web App.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_excelwarnondatarefresh'),

    # ExcelWorkbookSizeMax - Specifies the maximum size, in megabytes, of a workbook that can be loaded.
    Puppet::Resource::Param(Any, 'dsc_excelworkbooksizemax'),

    # ExcelMemoryCacheThreshold - The percentage of the Maximum Private Bytes that can be allocated to inactive objects. When the memory cache threshold is exceeded, cached objects that are not currently in use are released.
    Puppet::Resource::Param(Any, 'dsc_excelmemorycachethreshold'),

    # ExcelUnusedObjectAgeMax - The maximum time (in minutes) that inactive objects remain in the memory cache. Inactive objects are objects that are not used in a session.
    Puppet::Resource::Param(Any, 'dsc_excelunusedobjectagemax'),

    # ExcelCachingUnusedFiles - Enable caching of files that are no longer in use by Web Excel sessions.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_excelcachingunusedfiles'),

    # ExcelAbortOnRefreshOnOpenFail - Specifies that the loading of a Web Excel file automatically fails if an automatic data refresh operation fails when the file is opened.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_excelabortonrefreshonopenfail'),

    # ExcelAutomaticVolatileFunctionCacheLifetime - Specifies the maximum time, in seconds, that a computed value for a volatile function is cached for automatic recalculations.
    Puppet::Resource::Param(Any, 'dsc_excelautomaticvolatilefunctioncachelifetime'),

    # ExcelConcurrentDataRequestsPerSessionMax - Specifies the maximum number of concurrent external data requests allowed in each session. If a session must issue more than this number of requests, additional requests must be queued. The scope of this setting is the logical server.
    Puppet::Resource::Param(Any, 'dsc_excelconcurrentdatarequestspersessionmax'),

    # ExcelDefaultWorkbookCalcMode - Specifies the calculation mode of workbooks.  Settings other than File override the workbook settings.
    Puppet::Resource::Param(Any, 'dsc_exceldefaultworkbookcalcmode'),

    # ExcelRestExternalDataEnabled - Specifies whether requests from the Representational State Transfer (REST) Application Programming Interface (API) are permitted to refresh external data connections.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_excelrestexternaldataenabled'),

    # ExcelChartAndImageSizeMax - Specifies the maximum size, in megabytes, of a chart or image that can be opened.
    Puppet::Resource::Param(Any, 'dsc_excelchartandimagesizemax'),

    # ExternalURL - Specifies the URL root that clients use to access the Office Web Apps Server farm from the Internet. In the case of a load-balanced, multiserver Office Web Apps Server farm, the external URL is bound to the IP address of the external-facing load balancer.
    Puppet::Resource::Param(Any, 'dsc_externalurl'),

    # FarmOU - Specifies the name of the Active Directory organizational unit (OU) that servers must be a member of to join the Office Web Apps Server farm. Use this parameter to prevent unauthorized servers (that is, servers that are not in the OU) from joining an Office Web Apps Server farm.
    Puppet::Resource::Param(Any, 'dsc_farmou'),

    # InternalURL - Specifies the URL root that clients use to access the Office Web Apps Server farm from the intranet.
    Puppet::Resource::Param(Any, 'dsc_internalurl'),

    # LogLocation - Specifies the location on the local computer where activity logs are stored.
    Puppet::Resource::Param(Any, 'dsc_loglocation'),

    # LogRetentionInDays - Specifies the number of days that log entries are stored. Log entries older than the configured date are trimmed.
    Puppet::Resource::Param(Any, 'dsc_logretentionindays'),

    # LogVerbosity - Specifies how much information is stored in the trace log files.
    Puppet::Resource::Param(Any, 'dsc_logverbosity'),

    # MaxMemoryCacheSizeInMB - Specifies, in megabytes, the maximum amount of memory that the rendering cache can use.
    Puppet::Resource::Param(Any, 'dsc_maxmemorycachesizeinmb'),

    # MaxTranslationCharacterCount - Specifies the maximum amount of characters a document can have in order to be translated.
    Puppet::Resource::Param(Any, 'dsc_maxtranslationcharactercount'),

    # OpenFromUncEnabled - Turns on or off the ability to use Online Viewers to view Office files from a UNC path.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_openfromuncenabled'),

    # OpenFromUrlEnabled - Turns on or off the ability to use Online Viewers to view Office files from a URL or UNC path.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_openfromurlenabled'),

    # OpenFromUrlThrottlingEnabled - Throttles the number of open from URL requests from any given server in a time period. The default throttling values, which are not configurable, make sure that an Office Web Apps Server farm will not overwhelm a single server with requests for content to be viewed in the Online Viewers.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_openfromurlthrottlingenabled'),

    # Proxy - Specifies the URL of the proxy server that is configured to allow HTTP requests to external sites. Typically configured in conjunction with the ClipartEnabled and TranslationEnabled parameters.
    Puppet::Resource::Param(Any, 'dsc_proxy'),

    # RecycleActiveProcessCount - Specifies the number of files that a single Word or PowerPoint process can render before the process is recycled.
    Puppet::Resource::Param(Any, 'dsc_recycleactiveprocesscount'),

    # RenderingLocalCacheLocation - Specifies the location of the temporary cache for use by the Word and PowerPoint Viewing Services.
    Puppet::Resource::Param(Any, 'dsc_renderinglocalcachelocation'),

    # SSLOffloaded - Indicates to the servers in the Office Web Apps Server farm that SSL is offloaded to the load balancer. When SSLOffloaded is enabled, web applications are bound to port 80 (HTTP) on the local server. However, HTML that references other resources, such as CSS or images, uses HTTPS URLs for those references.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ssloffloaded'),

    # TranslationEnabled - Enables support for automatic document translation using Microsoft Translator, an online service that translates text between languages. The translated file is shown in the Word Web App. Because Microsoft Translator is an online service, you must enable server-to-web communication directly or by using a proxy that you specify by using the Proxy parameter.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_translationenabled'),

    # TranslationServiceAddress - Specifies the URL of the translation server that translation requests are sent to. The default is the Microsoft Translator online service. Typically you will not use this parameter unless you must change translation services.
    Puppet::Resource::Param(Any, 'dsc_translationserviceaddress'),

    # TranslationServiceAppId - Specifies the application ID for the translation service. The default is the public application ID for Office Web Apps. Typically you will not use this parameter unless you have negotiated with Microsoft Translator for additional services and they have provided you with a private application ID.
    Puppet::Resource::Param(Any, 'dsc_translationserviceappid'),

    # AllowOutboundHttp
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowoutboundhttp'),

    # ExcelUseEffectiveUserName
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_exceluseeffectiveusername'),

    # S2SCertificateName
    Puppet::Resource::Param(Any, 'dsc_s2scertificatename'),

    # RemovePersonalInformationFromLogs
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_removepersonalinformationfromlogs'),

    # PicturePasteDisabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_picturepastedisabled'),

    # The specific backend to use for this `dsc_officeonlineserverfarm`
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
