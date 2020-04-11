# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xMpPreference resource type.
# Automatically generated from
# 'xDefender/DSCResources/MSFT_xMpPreference/MSFT_xMpPreference.schema.mof'
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
  'dsc_xmppreference',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Provide the text string to uniquely identify this group of settings
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ExclusionPath - Specifies an array of file paths to exclude from scheduled and real-time scanning. You can specify a folder to exclude all the files under the folder.
    Puppet::Resource::Param(Any, 'dsc_exclusionpath'),

    # ExclusionExtension - Specifies an array of file name extensions, such as obj or lib, to exclude from scheduled, custom, and real-time scanning.
    Puppet::Resource::Param(Any, 'dsc_exclusionextension'),

    # ExclusionProcess - Specifies an array of processes, as paths to process images. The cmdlet excludes any files opened by the processes that you specify from scheduled and real-time scanning. Specifying this parameter excludes files opened by executable programs only. The cmdlet does not exclude the processes themselves. To exclude a process, specify it by using the ExclusionPath parameter.
    Puppet::Resource::Param(Any, 'dsc_exclusionprocess'),

    # RealTimeScanDirection - Specifies scanning configuration for incoming and outgoing files on NTFS volumes. Specify a value for this parameter to enhance performance on servers which have a large number of file transfers, but need scanning for either incoming or outgoing files. Evaluate this configuration based on the server role. For non-NTFS volumes, Windows Defender performs full monitoring of file and program activity. Valid values are Both, Incoming, Outgoing.
    Puppet::Resource::Param(Any, 'dsc_realtimescandirection'),

    # QuarantinePurgeItemsAfterDelay - Specifies the number of days to keep items in the Quarantine folder. If you specify a value of zero or do not specify a value for this parameter, items stay in the Quarantine folder indefinitely.
    Puppet::Resource::Param(Any, 'dsc_quarantinepurgeitemsafterdelay'),

    # RemediationScheduleDay - Specifies the day of the week on which to perform a scheduled full scan in order to complete remediation. Alternatively, specify everyday for this full scan or never. The default value is Never. If you specify a value of Never or do not specify a value, Windows Defender performs a scheduled full scan to complete remediation by using a default frequency. Valid values are Everyday, Never, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
    Puppet::Resource::Param(Any, 'dsc_remediationscheduleday'),

    # RemediationScheduleTime - Specifies the time of day, as the number of minutes after midnight, to perform a scheduled scan. The time refers to the local time on the computer. If you do not specify a value for this parameter, a scheduled scan runs at the default time of two hours after midnight.
    Puppet::Resource::Param(Any, 'dsc_remediationscheduletime'),

    # ReportingAdditionalActionTimeOut - Specifies the number of minutes before a detection in the additional action state changes to the cleared state.
    Puppet::Resource::Param(Any, 'dsc_reportingadditionalactiontimeout'),

    # ReportingNonCriticalTimeOut - Specifies the number of minutes before a detection in the non-critically failed state changes to the cleared state.
    Puppet::Resource::Param(Any, 'dsc_reportingnoncriticaltimeout'),

    # ReportingCriticalFailureTimeOut - Specifies the number of minutes before a detection in the critically failed state changes to either the additional action state or the cleared state.
    Puppet::Resource::Param(Any, 'dsc_reportingcriticalfailuretimeout'),

    # ScanAvgCPULoadFactor - Specifies the maxium percentage CPU usage for a scan. The acceptable values for this parameter are:  integers from 5 through 100, and the value 0, which disables CPU throttling. Windows Defender does not exceed the percentage of CPU usage that you specify. The default value is 50.
    Puppet::Resource::Param(Any, 'dsc_scanavgcpuloadfactor'),

    # CheckForSignaturesBeforeRunningScan - Indicates whether to check for new virus and spyware definitions before Windows Defender runs a scan. If you specify a value of $True, Windows Defender checks for new definitions. If you specify $False or do not specify a value, the scan begins with existing definitions. This value applies to scheduled scans and to scans that you start from the command line, but it does not affect scans that you start from the user interface.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_checkforsignaturesbeforerunningscan'),

    # ScanPurgeItemsAfterDelay - Specifies the number of days to keep items in the scan history folder. After this time, Windows Defender removes the items. If you specify a value of zero, Windows Defender does not remove items. If you do not specify a value, Windows Defender removes items from the scan history folder after the default length of time, which is 30 days.
    Puppet::Resource::Param(Any, 'dsc_scanpurgeitemsafterdelay'),

    # ScanOnlyIfIdleEnabled - Indicates whether to start scheduled scans only when the computer is not in use. If you specify a value of $True or do not specify a value, Windows Defender runs schedules scans when the computer is on, but not in use.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_scanonlyifidleenabled'),

    # ScanParameters - Specifies the scan type to use during a scheduled scan. If you do not specify this parameter, Windows Defender uses the default value of quick scan. Valid values are FullSCan, QuickScan.
    Puppet::Resource::Param(Any, 'dsc_scanparameters'),

    # ScanScheduleDay - Specifies the day of the week on which to perform a scheduled scan. Alternatively, specify everyday for a scheduled scan or never. If you specify a value of Never or do not specify a value, Windows Defender performs a scheduled scan by using a default frequency. Valid values are Everyday, Never, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
    Puppet::Resource::Param(Any, 'dsc_scanscheduleday'),

    # ScanScheduleQuickScanTime - Specifies the time of day, as the number of minutes after midnight, to perform a scheduled quick scan. The time refers to the local time on the computer. If you do not specify a value for this parameter, a scheduled quick scan runs at the time specified by the ScanScheduleTime parameter. That parameter has a default time of two hours after midnight.
    Puppet::Resource::Param(Any, 'dsc_scanschedulequickscantime'),

    # ScanScheduleTime - Specifies the time of day, as the number of minutes after midnight, to perform a scheduled scan. The time refers to the local time on the computer. If you do not specify a value for this parameter, a scheduled scan runs at a default time of two hours after midnight.
    Puppet::Resource::Param(Any, 'dsc_scanscheduletime'),

    # SignatureFirstAuGracePeriod - Specifies a grace period, in minutes, for the definition. If a definition successfully updates within this period, Windows Defender abandons any service initiated updates. This parameter overrides the value of the CheckForSignaturesBeforeRunningScan parameter.
    Puppet::Resource::Param(Any, 'dsc_signaturefirstaugraceperiod'),

    # SignatureAuGracePeriod - Specifies a grace period, in minutes, for the definition. If a definition successfully updates within this period, Windows Defender abandons any service initiated updates.
    Puppet::Resource::Param(Any, 'dsc_signatureaugraceperiod'),

    # SignatureDefinitionUpdateFileSharesSources - Specifies file-share sources for definition updates. Specify sources as a bracketed sequence of Universal Naming Convention (UNC) locations, separated by the pipeline symbol. If you specify a value for this parameter, Windows Defender attempts to connect to the shares in the order that you specify. After Windows Defender updates a definition, it stops attempting to connect to shares on the list. If you do not specify a value for this parameter, the list is empty.
    Puppet::Resource::Param(Any, 'dsc_signaturedefinitionupdatefilesharessources'),

    # SignatureDisableUpdateOnStartupWithoutEngine - Indicates whether to initiate definition updates even if no antimalware engine is present. If you specify a value of $True or do not specify a value, Windows Defender initiates definition updates on startup. If you specify a value of $False, and if no antimalware engine is present, Windows Defender does not initiate definition updates on startup.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_signaturedisableupdateonstartupwithoutengine'),

    # SignatureFallbackOrder - Specifies the order in which to contact different definition update sources. Specify the types of update sources in the order in which you want Windows Defender to contact them, enclosed in braces and separated by the pipeline symbol.
    Puppet::Resource::Param(Any, 'dsc_signaturefallbackorder'),

    # SignatureScheduleDay - Specifies the day of the week on which to check for definition updates. Alternatively, specify everyday for a scheduled scan or never. If you specify a value of Never or do not specify a value, Windows Defender checks for definition updates by using a default frequency. Valid values are Everyday, Never, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.
    Puppet::Resource::Param(Any, 'dsc_signaturescheduleday'),

    # SignatureScheduleTime - Specifies the time of day, as the number of minutes after midnight, to check for definition updates. The time refers to the local time on the computer. If you do not specify a value for this parameter, Windows Defender checks for definition updates at the default time of 15 minutes before the scheduled scan time.
    Puppet::Resource::Param(Any, 'dsc_signaturescheduletime'),

    # SignatureUpdateCatchupInterval - Specifies the number of days after which Windows Defender requires a catch-up definition update. If you do not specify a value for this parameter, Windows Defender requires a catch-up definition update after the default value of one day.
    Puppet::Resource::Param(Any, 'dsc_signatureupdatecatchupinterval'),

    # SignatureUpdateInterval - Specifies the interval, in hours, at which to check for definition updates. The acceptable values for this parameter are:  integers from 1 through 24. If you do not specify a value for this parameter, Windows Defender checks at the default interval. You can use this parameter instead of the SignatureScheduleDay parameter and SignatureScheduleTime parameter.
    Puppet::Resource::Param(Any, 'dsc_signatureupdateinterval'),

    # MAPSReporting - Specifies the type of membership in Microsoft Active Protection Service. Microsoft Active Protection Service is an online community that helps you choose how to respond to potential threats. The community also helps prevent the spread of new malicious software. If you join this community, you can choose to automatically send basic or additional information about detected software. Additional information helps Microsoft create new definitions. In some instances, personal information might unintentionally be sent to Microsoft. However, Microsoft will not use this information to identify you or contact you. Valid values are Advanced, Basic, Disabled.
    Puppet::Resource::Param(Any, 'dsc_mapsreporting'),

    # DisablePrivacyMode - Indicates whether to disable privacy mode. Privacy mode prevents users, other than administrators, from displaying threat history.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableprivacymode'),

    # RandomizeScheduleTaskTimes - Indicates whether to select a random time for the scheduled start and scheduled update for definitions. If you specify a value of $True or do not specify a value, scheduled tasks begin within 30 minutes, before or after, the scheduled time. If you randomize the start times, it can distribute the impact of scanning. For example, if several virtual machines share the same host, randomized start times prevents all the hosts from starting the scheduled tasks at the same time.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_randomizescheduletasktimes'),

    # DisableBehaviorMonitoring - Indicates whether to enable behavior monitoring. If you specify a value of $True or do not specify a value, Windows Defender enables behavior monitoring
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablebehaviormonitoring'),

    # DisableIntrusionPreventionSystem - Indicates whether to configure network protection against exploitation of known vulnerabilities. If you specify a value of $True or do not specify a value, network protection is enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableintrusionpreventionsystem'),

    # DisableIOAVProtection - Indicates whether Windows Defender scans all downloaded files and attachments. If you specify a value of $True or do not specify a value, scanning downloaded files and attachments is enabled.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableioavprotection'),

    # DisableRealtimeMonitoring - Indicates whether to use real-time protection. If you specify a value of $True or do not specify a value, Windows Defender uses real-time protection. We recommend that you enable Windows Defender to use real-time protection.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablerealtimemonitoring'),

    # DisableScriptScanning - Specifies whether to disable the scanning of scripts during malware scans.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablescriptscanning'),

    # DisableArchiveScanning - Indicates whether to scan archive files, such as .zip and .cab files, for malicious and unwanted software. If you specify a value of $True or do not specify a value, Windows Defender scans archive files.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablearchivescanning'),

    # DisableAutoExclusions - Indicates whether to disable the Automatic Exclusions feature for the server.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableautoexclusions'),

    # DisableCatchupFullScan - Indicates whether Windows Defender runs catch-up scans for scheduled full scans. A computer can miss a scheduled scan, usually because the computer is turned off at the scheduled time. If you specify a value of $True, after the computer misses two scheduled full scans, Windows Defender runs a catch-up scan the next time someone logs on to the computer. If you specify a value of $False or do not specify a value, the computer does not run catch-up scans for scheduled full scans.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablecatchupfullscan'),

    # DisableCatchupQuickScan - Indicates whether Windows Defender runs catch-up scans for scheduled quick scans. A computer can miss a scheduled scan, usually because the computer is off at the scheduled time. If you specify a value of $True, after the computer misses two scheduled quick scans, Windows Defender runs a catch-up scan the next time someone logs onto the computer. If you specify a value of $False or do not specify a value, the computer does not run catch-up scans for scheduled quick scans.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablecatchupquickscan'),

    # DisableEmailScanning - Indicates whether Windows Defender parses the mailbox and mail files, according to their specific format, in order to analyze mail bodies and attachments. Windows Defender supports several formats, including .pst, .dbx, .mbx, .mime, and .binhex. If you specify a value of $True, Windows Defender performs email scanning. If you specify a value of $False or do not specify a value, Windows Defender does not perform email scanning.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableemailscanning'),

    # DisableRemovableDriveScanning - Indicates whether to scan for malicious and unwanted software in removable drives, such as flash drives, during a full scan. If you specify a value of $True, Windows Defender scans removable drives during any type of scan. If you specify a value of $False or do not specify a value, Windows Defender does not scan removable drives during a full scan. Windows Defender can still scan removable drives during quick scans or custom scans.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disableremovabledrivescanning'),

    # DisableRestorePoint - Indicates whether to disable scanning of restore points.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablerestorepoint'),

    # DisableScanningMappedNetworkDrivesForFullScan - Indicates whether to scan mapped network drives. If you specify a value of $True, Windows Defender scans mapped network drives. If you specify a value of $False or do not specify a value, Windows Defender does not scan mapped network drives.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablescanningmappednetworkdrivesforfullscan'),

    # DisableScanningNetworkFiles - Indicates whether to scan for network files. If you specify a value of $True, Windows Defender scans network files. If you specify a value of $False or do not specify a value, Windows Defender does not scan network files. We do not recommend that you scan network files.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disablescanningnetworkfiles'),

    # UILockdown - Indicates whether to disable UI lockdown mode. If you specify a value of $True, Windows Defender disables UI lockdown mode. If you specify $False or do not specify a value, UI lockdown mode is enabled.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_uilockdown'),

    # ThreatIDDefaultAction_Ids - Specifies an array of the actions to take for the IDs specified by using the ThreatIDDefaultAction_Ids parameter.
    Puppet::Resource::Param(Any, 'dsc_threatiddefaultaction_ids'),

    # ThreatIDDefaultAction_Actions - Specifies which automatic remediation action to take for an unknonwn level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_threatiddefaultaction_actions'),

    # UnknownThreatDefaultAction - Specifies which automatic remediation action to take for a low level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_unknownthreatdefaultaction'),

    # LowThreatDefaultAction - Specifies which automatic remediation action to take for a low level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_lowthreatdefaultaction'),

    # ModerateThreatDefaultAction - Specifies which automatic remediation action to take for a moderate level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_moderatethreatdefaultaction'),

    # HighThreatDefaultAction - Specifies which automatic remediation action to take for a high level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_highthreatdefaultaction'),

    # SevereThreatDefaultAction - Specifies which automatic remediation action to take for a severe level threat. Valid values are Allow, Block, Clean, NoAction, Quarantine, Remove, UserDefined.
    Puppet::Resource::Param(Any, 'dsc_severethreatdefaultaction'),

    # SubmitSamplesConsent - Specifies how Windows Defender checks for user consent for certain samples. If consent has previously been granted, Windows Defender submits the samples. Otherwise, if the MAPSReporting parameter does not have a value of Disabled, Windows Defender prompts the user for consent. Valid values are Allways Prompt, Send safe samples automatically, Never send, Send all samples automatically.
    Puppet::Resource::Param(Any, 'dsc_submitsamplesconsent'),

    # The specific backend to use for this `dsc_xmppreference`
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
