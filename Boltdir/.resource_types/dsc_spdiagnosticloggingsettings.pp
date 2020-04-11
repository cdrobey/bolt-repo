# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPDiagnosticLoggingSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPDiagnosticLoggingSettings/MSFT_SPDiagnosticLoggingSettings.schema.mof'
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
  'dsc_spdiagnosticloggingsettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # LogPath - The physical path on each server to store ULS logs
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # LogSpaceInGB - The space in GB that should be used to store ULS logs
    Puppet::Resource::Param(Any, 'dsc_logspaceingb'),

    # AppAnalyticsAutomaticUploadEnabled - Should app analytics automatically be uploaded
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_appanalyticsautomaticuploadenabled'),

    # CustomerExperienceImprovementProgramEnabled - Should the customer experience program be enabled in this farm
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_customerexperienceimprovementprogramenabled'),

    # DaysToKeepLogs - How many days should ULS logs be kept for
    Puppet::Resource::Param(Any, 'dsc_daystokeeplogs'),

    # DownloadErrorReportingUpdatesEnabled - Should updates to error reporting tools be automatically downloaded
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_downloaderrorreportingupdatesenabled'),

    # ErrorReportingAutomaticUploadEnabled - Should error reports be automatically uploaded
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_errorreportingautomaticuploadenabled'),

    # ErrorReportingEnabled - Should reporting of errors be enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_errorreportingenabled'),

    # EventLogFloodProtectionEnabled - Protect event logs with Event Log Flood Protection
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_eventlogfloodprotectionenabled'),

    # EventLogFloodProtectionNotifyInterval - What interval should the event logs report a flood event
    Puppet::Resource::Param(Any, 'dsc_eventlogfloodprotectionnotifyinterval'),

    # EventLogFloodProtectionQuietPeriod - What quiet period should reset the event log flood protection thresholds
    Puppet::Resource::Param(Any, 'dsc_eventlogfloodprotectionquietperiod'),

    # EventLogFloodProtectionThreshold - What is the event log flood protection threshold
    Puppet::Resource::Param(Any, 'dsc_eventlogfloodprotectionthreshold'),

    # EventLogFloodProtectionTriggerPeriod - What is the time period that will trigger event log flood protection
    Puppet::Resource::Param(Any, 'dsc_eventlogfloodprotectiontriggerperiod'),

    # LogCutInterval - How many minutes of activity will a ULS log file leep in an individual file
    Puppet::Resource::Param(Any, 'dsc_logcutinterval'),

    # LogMaxDiskSpaceUsageEnabled - Will the maximum disk space setting be enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_logmaxdiskspaceusageenabled'),

    # ScriptErrorReportingDelay - What delay will be set before script error reporting is triggered
    Puppet::Resource::Param(Any, 'dsc_scripterrorreportingdelay'),

    # ScriptErrorReportingEnabled - Is script error reporting enabled in this farm
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_scripterrorreportingenabled'),

    # ScriptErrorReportingRequireAuth - Require users to be authenticated to allow script errors to be reported
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_scripterrorreportingrequireauth'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spdiagnosticloggingsettings`
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
