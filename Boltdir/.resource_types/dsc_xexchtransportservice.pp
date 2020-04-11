# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchTransportService resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchTransportService/MSFT_xExchTransportService.schema.mof'
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
  'dsc_xexchtransportservice',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # ActiveUserStatisticsLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_activeuserstatisticslogmaxage'),

    # ActiveUserStatisticsLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_activeuserstatisticslogmaxdirectorysize'),

    # ActiveUserStatisticsLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_activeuserstatisticslogmaxfilesize'),

    # ActiveUserStatisticsLogPath
    Puppet::Resource::Param(Any, 'dsc_activeuserstatisticslogpath'),

    # AgentLogEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_agentlogenabled'),

    # AgentLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_agentlogmaxage'),

    # AgentLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_agentlogmaxdirectorysize'),

    # AgentLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_agentlogmaxfilesize'),

    # AgentLogPath
    Puppet::Resource::Param(Any, 'dsc_agentlogpath'),

    # ConnectivityLogEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_connectivitylogenabled'),

    # ConnectivityLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_connectivitylogmaxage'),

    # ConnectivityLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_connectivitylogmaxdirectorysize'),

    # ConnectivityLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_connectivitylogmaxfilesize'),

    # ConnectivityLogPath
    Puppet::Resource::Param(Any, 'dsc_connectivitylogpath'),

    # ContentConversionTracingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_contentconversiontracingenabled'),

    # DelayNotificationTimeout
    Puppet::Resource::Param(Any, 'dsc_delaynotificationtimeout'),

    # DnsLogEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dnslogenabled'),

    # DnsLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_dnslogmaxage'),

    # DnsLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_dnslogmaxdirectorysize'),

    # DnsLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_dnslogmaxfilesize'),

    # DnsLogPath
    Puppet::Resource::Param(Any, 'dsc_dnslogpath'),

    # ExternalDNSAdapterEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_externaldnsadapterenabled'),

    # ExternalDNSAdapterGuid
    Puppet::Resource::Param(Any, 'dsc_externaldnsadapterguid'),

    # ExternalDNSProtocolOption - Valid values are Any, UseTcpOnly, UseUdpOnly.
    Puppet::Resource::Param(Any, 'dsc_externaldnsprotocoloption'),

    # ExternalDNSServers
    Puppet::Resource::Param(Any, 'dsc_externaldnsservers'),

    # ExternalIPAddress
    Puppet::Resource::Param(Any, 'dsc_externalipaddress'),

    # InternalDNSAdapterEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_internaldnsadapterenabled'),

    # InternalDNSAdapterGuid
    Puppet::Resource::Param(Any, 'dsc_internaldnsadapterguid'),

    # InternalDNSProtocolOption - Valid values are Any, UseTcpOnly, UseUdpOnly.
    Puppet::Resource::Param(Any, 'dsc_internaldnsprotocoloption'),

    # InternalDNSServers
    Puppet::Resource::Param(Any, 'dsc_internaldnsservers'),

    # IntraOrgConnectorProtocolLoggingLevel - Valid values are None, Verbose.
    Puppet::Resource::Param(Any, 'dsc_intraorgconnectorprotocollogginglevel'),

    # IntraOrgConnectorSmtpMaxMessagesPerConnection
    Puppet::Resource::Param(Any, 'dsc_intraorgconnectorsmtpmaxmessagesperconnection'),

    # IrmLogEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_irmlogenabled'),

    # IrmLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_irmlogmaxage'),

    # IrmLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_irmlogmaxdirectorysize'),

    # IrmLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_irmlogmaxfilesize'),

    # IrmLogPath
    Puppet::Resource::Param(Any, 'dsc_irmlogpath'),

    # MaxConcurrentMailboxDeliveries
    Puppet::Resource::Param(Any, 'dsc_maxconcurrentmailboxdeliveries'),

    # MaxConcurrentMailboxSubmissions
    Puppet::Resource::Param(Any, 'dsc_maxconcurrentmailboxsubmissions'),

    # MaxConnectionRatePerMinute
    Puppet::Resource::Param(Any, 'dsc_maxconnectionrateperminute'),

    # MaxOutboundConnections
    Puppet::Resource::Param(Any, 'dsc_maxoutboundconnections'),

    # MaxPerDomainOutboundConnections
    Puppet::Resource::Param(Any, 'dsc_maxperdomainoutboundconnections'),

    # MessageExpirationTimeout
    Puppet::Resource::Param(Any, 'dsc_messageexpirationtimeout'),

    # MessageRetryInterval
    Puppet::Resource::Param(Any, 'dsc_messageretryinterval'),

    # MessageTrackingLogEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_messagetrackinglogenabled'),

    # MessageTrackingLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_messagetrackinglogmaxage'),

    # MessageTrackingLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_messagetrackinglogmaxdirectorysize'),

    # MessageTrackingLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_messagetrackinglogmaxfilesize'),

    # MessageTrackingLogPath
    Puppet::Resource::Param(Any, 'dsc_messagetrackinglogpath'),

    # MessageTrackingLogSubjectLoggingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_messagetrackinglogsubjectloggingenabled'),

    # OutboundConnectionFailureRetryInterval
    Puppet::Resource::Param(Any, 'dsc_outboundconnectionfailureretryinterval'),

    # PickupDirectoryMaxHeaderSize
    Puppet::Resource::Param(Any, 'dsc_pickupdirectorymaxheadersize'),

    # PickupDirectoryMaxMessagesPerMinute
    Puppet::Resource::Param(Any, 'dsc_pickupdirectorymaxmessagesperminute'),

    # PickupDirectoryMaxRecipientsPerMessage
    Puppet::Resource::Param(Any, 'dsc_pickupdirectorymaxrecipientspermessage'),

    # PickupDirectoryPath
    Puppet::Resource::Param(Any, 'dsc_pickupdirectorypath'),

    # PipelineTracingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pipelinetracingenabled'),

    # PipelineTracingPath
    Puppet::Resource::Param(Any, 'dsc_pipelinetracingpath'),

    # PipelineTracingSenderAddress
    Puppet::Resource::Param(Any, 'dsc_pipelinetracingsenderaddress'),

    # PoisonMessageDetectionEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_poisonmessagedetectionenabled'),

    # PoisonThreshold
    Puppet::Resource::Param(Any, 'dsc_poisonthreshold'),

    # QueueLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_queuelogmaxage'),

    # QueueLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_queuelogmaxdirectorysize'),

    # QueueLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_queuelogmaxfilesize'),

    # QueueLogPath
    Puppet::Resource::Param(Any, 'dsc_queuelogpath'),

    # QueueMaxIdleTime
    Puppet::Resource::Param(Any, 'dsc_queuemaxidletime'),

    # ReceiveProtocolLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxage'),

    # ReceiveProtocolLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxdirectorysize'),

    # ReceiveProtocolLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxfilesize'),

    # ReceiveProtocolLogPath
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogpath'),

    # RecipientValidationCacheEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recipientvalidationcacheenabled'),

    # ReplayDirectoryPath
    Puppet::Resource::Param(Any, 'dsc_replaydirectorypath'),

    # RootDropDirectoryPath
    Puppet::Resource::Param(Any, 'dsc_rootdropdirectorypath'),

    # RoutingTableLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_routingtablelogmaxage'),

    # RoutingTableLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_routingtablelogmaxdirectorysize'),

    # RoutingTableLogPath
    Puppet::Resource::Param(Any, 'dsc_routingtablelogpath'),

    # SendProtocolLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_sendprotocollogmaxage'),

    # SendProtocolLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_sendprotocollogmaxdirectorysize'),

    # SendProtocolLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_sendprotocollogmaxfilesize'),

    # SendProtocolLogPath
    Puppet::Resource::Param(Any, 'dsc_sendprotocollogpath'),

    # ServerStatisticsLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_serverstatisticslogmaxage'),

    # ServerStatisticsLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_serverstatisticslogmaxdirectorysize'),

    # ServerStatisticsLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_serverstatisticslogmaxfilesize'),

    # ServerStatisticsLogPath
    Puppet::Resource::Param(Any, 'dsc_serverstatisticslogpath'),

    # TransientFailureRetryCount
    Puppet::Resource::Param(Any, 'dsc_transientfailureretrycount'),

    # TransientFailureRetryInterval
    Puppet::Resource::Param(Any, 'dsc_transientfailureretryinterval'),

    # UseDowngradedExchangeServerAuth
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usedowngradedexchangeserverauth'),

    # The specific backend to use for this `dsc_xexchtransportservice`
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
