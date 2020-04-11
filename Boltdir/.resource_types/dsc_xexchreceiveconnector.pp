# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchReceiveConnector resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchReceiveConnector/MSFT_xExchReceiveConnector.schema.mof'
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
  'dsc_xexchreceiveconnector',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AdvertiseClientSettings
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_advertiseclientsettings'),

    # AuthMechanism
    Puppet::Resource::Param(Any, 'dsc_authmechanism'),

    # Banner
    Puppet::Resource::Param(Any, 'dsc_banner'),

    # BareLinefeedRejectionEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_barelinefeedrejectionenabled'),

    # BinaryMimeEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_binarymimeenabled'),

    # Bindings
    Puppet::Resource::Param(Any, 'dsc_bindings'),

    # ChunkingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_chunkingenabled'),

    # Comment
    Puppet::Resource::Param(Any, 'dsc_comment'),

    # ConnectionInactivityTimeout
    Puppet::Resource::Param(Any, 'dsc_connectioninactivitytimeout'),

    # ConnectionTimeout
    Puppet::Resource::Param(Any, 'dsc_connectiontimeout'),

    # DefaultDomain
    Puppet::Resource::Param(Any, 'dsc_defaultdomain'),

    # DeliveryStatusNotificationEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_deliverystatusnotificationenabled'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # DomainSecureEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_domainsecureenabled'),

    # EightBitMimeEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_eightbitmimeenabled'),

    # EnableAuthGSSAPI
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableauthgssapi'),

    # Enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # EnhancedStatusCodesEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enhancedstatuscodesenabled'),

    # ExtendedRightAllowEntries
    Puppet::Resource::Param(Any, 'dsc_extendedrightallowentries'),

    # ExtendedRightDenyEntries
    Puppet::Resource::Param(Any, 'dsc_extendedrightdenyentries'),

    # ExtendedProtectionPolicy - Valid values are None, Allow, Require.
    Puppet::Resource::Param(Any, 'dsc_extendedprotectionpolicy'),

    # Fqdn
    Puppet::Resource::Param(Any, 'dsc_fqdn'),

    # LongAddressesEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_longaddressesenabled'),

    # MaxAcknowledgementDelay
    Puppet::Resource::Param(Any, 'dsc_maxacknowledgementdelay'),

    # MaxHeaderSize
    Puppet::Resource::Param(Any, 'dsc_maxheadersize'),

    # MaxHopCount
    Puppet::Resource::Param(Any, 'dsc_maxhopcount'),

    # MaxInboundConnection
    Puppet::Resource::Param(Any, 'dsc_maxinboundconnection'),

    # MaxInboundConnectionPercentagePerSource
    Puppet::Resource::Param(Any, 'dsc_maxinboundconnectionpercentagepersource'),

    # MaxInboundConnectionPerSource
    Puppet::Resource::Param(Any, 'dsc_maxinboundconnectionpersource'),

    # MaxLocalHopCount
    Puppet::Resource::Param(Any, 'dsc_maxlocalhopcount'),

    # MaxLogonFailures
    Puppet::Resource::Param(Any, 'dsc_maxlogonfailures'),

    # MaxMessageSize
    Puppet::Resource::Param(Any, 'dsc_maxmessagesize'),

    # MaxProtocolErrors
    Puppet::Resource::Param(Any, 'dsc_maxprotocolerrors'),

    # MaxRecipientsPerMessage
    Puppet::Resource::Param(Any, 'dsc_maxrecipientspermessage'),

    # MessageRateLimit
    Puppet::Resource::Param(Any, 'dsc_messageratelimit'),

    # MessageRateSource - Valid values are None, IPAddress, User, All.
    Puppet::Resource::Param(Any, 'dsc_messageratesource'),

    # OrarEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_orarenabled'),

    # PermissionGroups
    Puppet::Resource::Param(Any, 'dsc_permissiongroups'),

    # PipeliningEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pipeliningenabled'),

    # ProtocolLoggingLevel - Valid values are None, Verbose.
    Puppet::Resource::Param(Any, 'dsc_protocollogginglevel'),

    # RemoteIPRanges
    Puppet::Resource::Param(Any, 'dsc_remoteipranges'),

    # RequireEHLODomain
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_requireehlodomain'),

    # RequireTLS
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_requiretls'),

    # ServiceDiscoveryFqdn
    Puppet::Resource::Param(Any, 'dsc_servicediscoveryfqdn'),

    # SizeEnabled - Valid values are Enabled, Disabled, EnabledWithoutValue.
    Puppet::Resource::Param(Any, 'dsc_sizeenabled'),

    # SuppressXAnonymousTls
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_suppressxanonymoustls'),

    # TarpitInterval
    Puppet::Resource::Param(Any, 'dsc_tarpitinterval'),

    # TlsCertificateName
    Puppet::Resource::Param(Any, 'dsc_tlscertificatename'),

    # TlsDomainCapabilities
    Puppet::Resource::Param(Any, 'dsc_tlsdomaincapabilities'),

    # TransportRole - Valid values are FrontendTransport, HubTransport.
    Puppet::Resource::Param(Any, 'dsc_transportrole'),

    # Usage - Valid values are Client, Internal, Internet, Partner, Custom.
    Puppet::Resource::Param(Any, 'dsc_usage'),

    # The specific backend to use for this `dsc_xexchreceiveconnector`
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
