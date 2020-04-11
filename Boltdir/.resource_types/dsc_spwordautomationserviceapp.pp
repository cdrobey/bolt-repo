# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWordAutomationServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWordAutomationServiceApp/MSFT_SPWordAutomationServiceApp.schema.mof'
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
  'dsc_spwordautomationserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - THe name of the service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Present to ensure the app exists, absent to ensure that it does not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ApplicationPool - The name of the application pool to run the service app in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # DatabaseName - The name of the database for the service app
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The name of the server that will host the database
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # SupportedFileFormats - The list of supported file types Valid values are docx, doc, mht, rtf, xml.
    Puppet::Resource::Param(Any, 'dsc_supportedfileformats'),

    # DisableEmbeddedFonts - Should embedded fonts be disabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableembeddedfonts'),

    # MaximumMemoryUsage - What is the maximum amount of memory the service app should use (in MB)
    Puppet::Resource::Param(Any, 'dsc_maximummemoryusage'),

    # RecycleThreshold - What is the recycle threshold for this service app
    Puppet::Resource::Param(Any, 'dsc_recyclethreshold'),

    # DisableBinaryFileScan - Should binary file scans be disabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablebinaryfilescan'),

    # ConversionProcesses - How many conversion processes can be run at once
    Puppet::Resource::Param(Any, 'dsc_conversionprocesses'),

    # JobConversionFrequency - How frequently should new jobs be started from the queue (in minutes)
    Puppet::Resource::Param(Any, 'dsc_jobconversionfrequency'),

    # NumberOfConversionsPerProcess - How many document conversions should be included in a single process
    Puppet::Resource::Param(Any, 'dsc_numberofconversionsperprocess'),

    # TimeBeforeConversionIsMonitored - How long can a conversion be run before it becomes monitored
    Puppet::Resource::Param(Any, 'dsc_timebeforeconversionismonitored'),

    # MaximumConversionAttempts - What is the maximum number of attempts to convert a document
    Puppet::Resource::Param(Any, 'dsc_maximumconversionattempts'),

    # MaximumSyncConversionRequests - What is the maximum number of sync conversion requests for the service app
    Puppet::Resource::Param(Any, 'dsc_maximumsyncconversionrequests'),

    # KeepAliveTimeout - How long is the keep alive timeout set to for the service app
    Puppet::Resource::Param(Any, 'dsc_keepalivetimeout'),

    # MaximumConversionTime - What is the maximum time in seconds for a document conversion to be allowed to run
    Puppet::Resource::Param(Any, 'dsc_maximumconversiontime'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwordautomationserviceapp`
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
