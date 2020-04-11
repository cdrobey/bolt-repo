# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchMailboxDatabase resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchMailboxDatabase/MSFT_xExchMailboxDatabase.schema.mof'
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
  'dsc_xexchmailboxdatabase',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # DatabaseCopyCount
    Puppet::Resource::Param(Any, 'dsc_databasecopycount'),

    # Server
    Puppet::Resource::Param(Any, 'dsc_server'),

    # EdbFilePath
    Puppet::Resource::Param(Any, 'dsc_edbfilepath'),

    # LogFolderPath
    Puppet::Resource::Param(Any, 'dsc_logfolderpath'),

    # AdServerSettingsPreferredServer
    Puppet::Resource::Param(Any, 'dsc_adserversettingspreferredserver'),

    # SkipInitialDatabaseMount
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skipinitialdatabasemount'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # AutoDagExcludeFromMonitoring
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autodagexcludefrommonitoring'),

    # BackgroundDatabaseMaintenance
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_backgrounddatabasemaintenance'),

    # CalendarLoggingQuota
    Puppet::Resource::Param(Any, 'dsc_calendarloggingquota'),

    # CircularLoggingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_circularloggingenabled'),

    # DataMoveReplicationConstraint - Valid values are None, SecondCopy, SecondDatacenter, AllDatacenters, AllCopies.
    Puppet::Resource::Param(Any, 'dsc_datamovereplicationconstraint'),

    # DeletedItemRetention
    Puppet::Resource::Param(Any, 'dsc_deleteditemretention'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # EventHistoryRetentionPeriod
    Puppet::Resource::Param(Any, 'dsc_eventhistoryretentionperiod'),

    # IndexEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_indexenabled'),

    # IsExcludedFromProvisioning
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isexcludedfromprovisioning'),

    # IsExcludedFromProvisioningReason
    Puppet::Resource::Param(Any, 'dsc_isexcludedfromprovisioningreason'),

    # IssueWarningQuota
    Puppet::Resource::Param(Any, 'dsc_issuewarningquota'),

    # IsSuspendedFromProvisioning
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_issuspendedfromprovisioning'),

    # JournalRecipient
    Puppet::Resource::Param(Any, 'dsc_journalrecipient'),

    # MailboxRetention
    Puppet::Resource::Param(Any, 'dsc_mailboxretention'),

    # MountAtStartup
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_mountatstartup'),

    # OfflineAddressBook
    Puppet::Resource::Param(Any, 'dsc_offlineaddressbook'),

    # ProhibitSendQuota
    Puppet::Resource::Param(Any, 'dsc_prohibitsendquota'),

    # ProhibitSendReceiveQuota
    Puppet::Resource::Param(Any, 'dsc_prohibitsendreceivequota'),

    # RecoverableItemsQuota
    Puppet::Resource::Param(Any, 'dsc_recoverableitemsquota'),

    # RecoverableItemsWarningQuota
    Puppet::Resource::Param(Any, 'dsc_recoverableitemswarningquota'),

    # RetainDeletedItemsUntilBackup
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_retaindeleteditemsuntilbackup'),

    # The specific backend to use for this `dsc_xexchmailboxdatabase`
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
