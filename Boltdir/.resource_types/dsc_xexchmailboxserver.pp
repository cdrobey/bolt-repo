# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchMailboxServer resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchMailboxServer/MSFT_xExchMailboxServer.schema.mof'
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
  'dsc_xexchmailboxserver',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity - The Identity parameter specifies the Mailbox server that you want to modify.
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential - Credentials used to establish a remote Powershell session to Exchange
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AutoDatabaseMountDial - The AutoDatabaseMountDial parameter specifies the automatic database mount behavior for a continuous replication environment after a database failover. Valid values are BestAvailability, GoodAvailability, Lossless.
    Puppet::Resource::Param(Any, 'dsc_autodatabasemountdial'),

    # CalendarRepairIntervalEndWindow - The CalendarRepairIntervalEndWindow parameter specifies the number of days into the future to repair calendars. For example, if this parameter is set to 90, the Calendar Repair Assistant repairs calendars on this Mailbox server 90 days from now.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairintervalendwindow'),

    # CalendarRepairLogDirectorySizeLimit - The CalendarRepairLogDirectorySizeLimit parameter specifies the size limit for all log files for the Calendar Repair Assistant. After the limit is reached, the oldest files are deleted.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairlogdirectorysizelimit'),

    # CalendarRepairLogEnabled - The CalendarRepairLogEnabled parameter specifies whether the Calendar Repair Attendant logs items that it repairs. The repair log doesn't contain failed repair attempts.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_calendarrepairlogenabled'),

    # CalendarRepairLogFileAgeLimit - The CalendarRepairLogFileAgeLimit parameter specifies how long to retain calendar repair logs. Log files that exceed the maximum retention period are deleted.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairlogfileagelimit'),

    # CalendarRepairLogPath - The CalendarRepairLogPath parameter specifies the location of the calendar repair log files on the Mailbox server.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairlogpath'),

    # CalendarRepairLogSubjectLoggingEnabled - The CalendarRepairLogSubjectLoggingEnabled parameter specifies that the subject of the repaired calendar item is logged in the calendar repair log.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_calendarrepairlogsubjectloggingenabled'),

    # CalendarRepairMissingItemFixDisabled - The CalendarRepairMissingItemFixDisabled parameter specifies that the Calendar Repair Assistant won't fix missing attendee calendar items for mailboxes homed on this Mailbox server.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_calendarrepairmissingitemfixdisabled'),

    # CalendarRepairMode - The CalendarRepairMode parameter specifies the mode that the Calendar Repair Assistant will run in. Valid values are ValidateOnly, RepairAndValidate.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairmode'),

    # CalendarRepairWorkCycle - The CalendarRepairWorkCycle parameter specifies the time span in which all mailboxes on the specified server will be scanned by the Calendar Repair Assistant. Calendars that have inconsistencies will be flagged and repaired according to the interval specified by the CalendarRepairWorkCycleCheckpoint parameter.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairworkcycle'),

    # CalendarRepairWorkCycleCheckpoint - The CalendarRepairWorkCycleCheckpoint parameter specifies the time span at which all mailboxes will be identified as needing work completed on them.
    Puppet::Resource::Param(Any, 'dsc_calendarrepairworkcyclecheckpoint'),

    # DomainController - The DomainController parameter specifies the fully qualified domain name (FQDN) of the domain controller that writes this configuration change to Active Directory.
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # DatabaseCopyActivationDisabledAndMoveNow - The DatabaseCopyActivationDisabledAndMoveNow parameter specifies whether to prevent databases from being mounted on this Mailbox server if there are other healthy copies of the databases on other Mailbox servers. It will also immediately move any mounted databases on the server to other servers if copies exist and are healthy.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_databasecopyactivationdisabledandmovenow'),

    # DatabaseCopyAutoActivationPolicy - The DatabaseCopyAutoActivationPolicy parameter specifies the type of automatic activation available for mailbox database copies on the specified Mailbox server. Valid values are Blocked, IntrasiteOnly, and Unrestricted. Valid values are Blocked, IntrasiteOnly, Unrestricted.
    Puppet::Resource::Param(Any, 'dsc_databasecopyautoactivationpolicy'),

    # FolderLogForManagedFoldersEnabled - The FolderLogForManagedFoldersEnabled parameter specifies whether the folder log for managed folders is enabled for messages that were moved to managed folders.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_folderlogformanagedfoldersenabled'),

    # ForceGroupMetricsGeneration - The ForceGroupMetricsGeneration parameter specifies that group metrics information must be generated on the Mailbox server regardless of whether that server generates an offline address book (OAB). By default, group metrics are generated only on servers that generate OABs. Group metrics information is used by MailTips to inform senders about how many recipients their messages will be sent to. You need to use this parameter if your organization doesn't generate OABs and you want the group metrics data to be available.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_forcegroupmetricsgeneration'),

    # IsExcludedFromProvisioning - The IsExcludedFromProvisioning parameter specifies that the Mailbox server isn't considered by the OAB provisioning load balancer. If the IsExcludedFromProvisioning parameter is set to $true, the server won't be used for provisioning a new OAB or for moving existing OABs.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isexcludedfromprovisioning'),

    # JournalingLogForManagedFoldersEnabled - The JournalingLogForManagedFoldersEnabled parameter specifies whether the log for managed folders is enabled for journaling. The two possible values for this parameter are $true or $false. If you specify $true, information about messages that were journaled is logged. The logs are located at the location you specify with the LogPathForManagedFolders parameter.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_journalinglogformanagedfoldersenabled'),

    # Locale - The Locale parameter specifies the locale. A locale is a collection of language-related user preferences such as writing system, calendar, and date format.
    Puppet::Resource::Param(Any, 'dsc_locale'),

    # LogDirectorySizeLimitForManagedFolders - The LogDirectorySizeLimitForManagedFolders parameter specifies the size limit for all managed folder log files from a single message database. After the limit is reached for a set of managed folder log files from a message database, the oldest files are deleted to make space for new files.
    Puppet::Resource::Param(Any, 'dsc_logdirectorysizelimitformanagedfolders'),

    # LogFileAgeLimitForManagedFolders - The LogFileAgeLimitForManagedFolders parameter specifies how long to retain managed folder logs. Log files that exceed the maximum retention period are deleted.
    Puppet::Resource::Param(Any, 'dsc_logfileagelimitformanagedfolders'),

    # LogFileSizeLimitForManagedFolders - The LogFileSizeLimitForManagedFolders parameter specifies the maximum size for each managed folder log file. When the log file size limit is reached, a new log file is created.
    Puppet::Resource::Param(Any, 'dsc_logfilesizelimitformanagedfolders'),

    # LogPathForManagedFolders - The LogPathForManagedFolders parameter specifies the path to the directory that stores the managed folder log files.
    Puppet::Resource::Param(Any, 'dsc_logpathformanagedfolders'),

    # MailboxProcessorWorkCycle - The MailboxProcessorWorkCycle parameter specifies how often to scan for locked mailboxes.
    Puppet::Resource::Param(Any, 'dsc_mailboxprocessorworkcycle'),

    # ManagedFolderAssistantSchedule - The ManagedFolderAssistantSchedule parameter specifies the intervals each week during which the Managed Folder Assistant applies messaging records management (MRM) settings to managed folders. The format is StartDay.Time-EndDay.
    Puppet::Resource::Param(Any, 'dsc_managedfolderassistantschedule'),

    # ManagedFolderWorkCycle - The ManagedFolderWorkCycle parameter specifies the time span in which all mailboxes on the specified server will be processed by the Managed Folder Assistant. The Managed Folder Assistant applies retention policies according to the ManagedFolderWorkCycleCheckpoint interval.
    Puppet::Resource::Param(Any, 'dsc_managedfolderworkcycle'),

    # ManagedFolderWorkCycleCheckpoint - The ManagedFolderWorkCycleCheckpoint parameter specifies the time span at which to refresh the list of mailboxes so that new mailboxes that have been created or moved will be part of the work queue. Also, as mailboxes are prioritized, existing mailboxes that haven't been successfully processed for a long time will be placed higher in the queue and will have a greater chance of being processed again in the same work cycle.
    Puppet::Resource::Param(Any, 'dsc_managedfolderworkcyclecheckpoint'),

    # MAPIEncryptionRequired - The MAPIEncryptionRequired parameter specifies whether Exchange blocks MAPI clients that don't use encrypted remote procedure calls (RPCs).
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_mapiencryptionrequired'),

    # MaximumActiveDatabases - The MaximumActiveDatabases parameter specifies the number of databases that can be mounted on this Mailbox server. This parameter accepts numeric values.
    Puppet::Resource::Param(Any, 'dsc_maximumactivedatabases'),

    # MaximumPreferredActiveDatabases - The MaximumPreferredActiveDatabases parameter specifies a preferred maximum number of databases that a server should have. This value is different from the actual maximum, which is configured using the MaximumActiveDatabases parameter. The value of MaximumPreferredActiveDatabases is only honored during best copy and server selection, database and server switchovers, and when rebalancing the DAG.
    Puppet::Resource::Param(Any, 'dsc_maximumpreferredactivedatabases'),

    # OABGeneratorWorkCycle - The OABGeneratorWorkCycle parameter specifies the time span in which the OAB generation on the specified server will be processed.
    Puppet::Resource::Param(Any, 'dsc_oabgeneratorworkcycle'),

    # OABGeneratorWorkCycleCheckpoint - The OABGeneratorWorkCycleCheckpoint parameter specifies the time span at which to run OAB generation.
    Puppet::Resource::Param(Any, 'dsc_oabgeneratorworkcyclecheckpoint'),

    # PublicFolderWorkCycle - The PublicFolderWorkCycle parameter is used by the public folder assistant to determine how often the mailboxes in a database are processed by the assistant.
    Puppet::Resource::Param(Any, 'dsc_publicfolderworkcycle'),

    # PublicFolderWorkCycleCheckpoint - The PublicFolderWorkCycleCheckpoint determines how often the mailbox list for a database is evaluated. The processing speed is also calculated.
    Puppet::Resource::Param(Any, 'dsc_publicfolderworkcyclecheckpoint'),

    # RetentionLogForManagedFoldersEnabled - The RetentionLogForManagedFoldersEnabled parameter specifies whether the Managed Folder Assistant logs information about messages that have reached their retention limits.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_retentionlogformanagedfoldersenabled'),

    # SharingPolicySchedule - The SharingPolicySchedule parameter specifies the intervals each week during which the sharing policy runs. The Sharing Policy Assistant checks permissions on shared calendar items and contact folders in users' mailboxes against the assigned sharing policy. The assistant lowers or removes permissions according to the policy. The format is StartDay.Time-EndDay.Time.
    Puppet::Resource::Param(Any, 'dsc_sharingpolicyschedule'),

    # SharingPolicyWorkCycle - The SharingPolicyWorkCycle parameter specifies the time span in which all mailboxes on the specified server will be scanned by the Sharing Policy Assistant. The Sharing Policy Assistant scans all mailboxes and enables or disables sharing polices according to the interval specified by the SharingPolicyWorkCycle.
    Puppet::Resource::Param(Any, 'dsc_sharingpolicyworkcycle'),

    # SharingPolicyWorkCycleCheckpoint - The SharingPolicyWorkCycleCheckpoint parameter specifies the time span at which to refresh the list of mailboxes so that new mailboxes that have been created or moved will be part of the work queue. Also, as mailboxes are prioritized, existing mailboxes that haven't been successfully processed for a long time will be placed higher in the queue and will have a greater chance of being processed again in the same work cycle.
    Puppet::Resource::Param(Any, 'dsc_sharingpolicyworkcyclecheckpoint'),

    # SharingSyncWorkCycle - The SharingSyncWorkCycle parameter specifies the time span in which all mailboxes on the specified server will be synced to the cloud-based service by the Sharing Sync Assistant. Mailboxes that require syncing will be synced according to the interval specified by the SharingSyncWorkCycleCheckpoint parameter.
    Puppet::Resource::Param(Any, 'dsc_sharingsyncworkcycle'),

    # SharingSyncWorkCycleCheckpoint - The SharingSyncWorkCycleCheckpoint parameter specifies the time span at which to refresh the list of mailboxes so that new mailboxes that have been created or moved will be part of the work queue. Also, as mailboxes are prioritized, existing mailboxes that haven't been successfully processed for a long time will be placed higher in the queue and will have a greater chance of being processed again in the same work cycle.
    Puppet::Resource::Param(Any, 'dsc_sharingsyncworkcyclecheckpoint'),

    # SiteMailboxWorkCycle - The SiteMailboxWorkCycle parameter specifies the time span in which the site mailbox information on the specified server will be processed.
    Puppet::Resource::Param(Any, 'dsc_sitemailboxworkcycle'),

    # SiteMailboxWorkCycleCheckpoint - The SiteMailboxWorkCycleCheckpoint parameter specifies the time span at which to refresh the site mailbox workcycle.
    Puppet::Resource::Param(Any, 'dsc_sitemailboxworkcyclecheckpoint'),

    # SubjectLogForManagedFoldersEnabled - The SubjectLogForManagedFoldersEnabled parameter specifies whether the subject of messages is displayed in managed folder logs.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_subjectlogformanagedfoldersenabled'),

    # TopNWorkCycle - The TopNWorkCycle parameter specifies the time span in which all mailboxes that have Unified Messaging on the specified server will be scanned by the TopN Words Assistant. The TopN Words Assistant scans voice mail for the most frequently used words to aid in transcription.
    Puppet::Resource::Param(Any, 'dsc_topnworkcycle'),

    # TopNWorkCycleCheckpoint - The TopNWorkCycleCheckpoint parameter specifies the time span at which to refresh the list of mailboxes so that new mailboxes that have been created or moved will be part of the work queue. Also, as mailboxes are prioritized, existing mailboxes that haven't been successfully processed for a long time will be placed higher in the queue and will have a greater chance of being processed again in the same work cycle.
    Puppet::Resource::Param(Any, 'dsc_topnworkcyclecheckpoint'),

    # UMReportingWorkCycle - The UMReportingWorkCycle parameter specifies the time span in which the arbitration mailbox named SystemMailbox{e0dc1c29-89c3-4034-b678-e6c29d823ed9} on the specified server will be scanned by the Unified Messaging Reporting Assistant. The Unified Messaging Reporting Assistant updates the Call Statistics reports by reading Unified Messaging call data records for an organization on a regular basis.
    Puppet::Resource::Param(Any, 'dsc_umreportingworkcycle'),

    # UMReportingWorkCycleCheckpoint - The UMReportingWorkCycleCheckpoint parameter specifies the time span at which the arbitration mailbox named SystemMailbox{e0dc1c29-89c3-4034-b678-e6c29d823ed9} will be marked by processing.
    Puppet::Resource::Param(Any, 'dsc_umreportingworkcyclecheckpoint'),

    # WacDiscoveryEndpoint - The WacDiscoveryEndpoint parameter specifies the Office Online Server endpoint to use. Exchange 2016 only.
    Puppet::Resource::Param(Any, 'dsc_wacdiscoveryendpoint'),

    # The specific backend to use for this `dsc_xexchmailboxserver`
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
