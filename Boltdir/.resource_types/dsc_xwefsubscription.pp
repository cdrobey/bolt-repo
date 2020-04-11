# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWEFSubscription resource type.
# Automatically generated from
# 'xWindowsEventForwarding/DSCResources/MSFT_xWEFSubscription/MSFT_xWEFSubscription.schema.mof'
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
  'dsc_xwefsubscription',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # SubscriptionID - Name of the Subscription
    Puppet::Resource::Param(Any, 'dsc_subscriptionid'),

    # Ensure - Determines whether to validate or remove the scubscription Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SubscriptionType - Type of Subscription to create Valid values are CollectorInitiated, SourceInitiated.
    Puppet::Resource::Param(Any, 'dsc_subscriptiontype'),

    # Description - Description of the Collector subscription
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Enabled - Sets whether the subscription will be enabled, default true Valid values are true, false.
    Puppet::Resource::Param(Any, 'dsc_enabled'),

    # DeliveryMode - Configures whether the collector will pull events from source nodes or if the source nodes will push events to the collector, default push Valid values are Push, Pull.
    Puppet::Resource::Param(Any, 'dsc_deliverymode'),

    # MaxItems - The number of events that can occur on the source before they are submitted to the collector, default 1
    Puppet::Resource::Param(Any, 'dsc_maxitems'),

    # MaxLatencyTime - The maximum amount of time that can pass before events are submitted to the collector, default 20000
    Puppet::Resource::Param(Any, 'dsc_maxlatencytime'),

    # HeartBeatInterval - Frequency to verify connectivity, default 20000
    Puppet::Resource::Param(Any, 'dsc_heartbeatinterval'),

    # ReadExistingEvents - Should the collector read existing or only new events, default false Valid values are true, false.
    Puppet::Resource::Param(Any, 'dsc_readexistingevents'),

    # TransportName - Determines whether to require SSL, default HTTP Valid values are HTTP, HTTPS.
    Puppet::Resource::Param(Any, 'dsc_transportname'),

    # TransportPort - Set the port number that WinRM should use to make a connection, default 5985
    Puppet::Resource::Param(Any, 'dsc_transportport'),

    # ContentFormat - Format that event logs will be submitted in, default RenderedText
    Puppet::Resource::Param(Any, 'dsc_contentformat'),

    # Locale - Sets the subscription Locale, default en-US
    Puppet::Resource::Param(Any, 'dsc_locale'),

    # LogFile - Sets the event log that the collected events will be written to, default ForwardedEvents
    Puppet::Resource::Param(Any, 'dsc_logfile'),

    # CredentialsType - Sets the credential type used for authenticating to WinRM, default Default Valid values are Default, Basic, Negotiate, Digest.
    Puppet::Resource::Param(Any, 'dsc_credentialstype'),

    # AllowedSourceNonDomainComputers - This parameter has not been fully implemented, only required for source initiated scenarios, provide XML to set IssuerCAList, AllowedSubjectList, or DeniedSubjectList if this will be used, default empty string
    Puppet::Resource::Param(Any, 'dsc_allowedsourcenondomaincomputers'),

    # AllowedSourceDomainComputers - In Source Initiated scenario this SDDL determines who can push events, default O:NSG:NSD:(A;;GA;;;DC)(A;;GA;;;NS) which equates to Domain Computers and Network Service
    Puppet::Resource::Param(Any, 'dsc_allowedsourcedomaincomputers'),

    # Query - Expects an array of hashtables that set which events should be collected, default is all application and system logs
    Puppet::Resource::Param(Any, 'dsc_query'),

    # Address - Expects an array of source node FQDNs, default source.wef.test to prevent errors when only staging test subscription
    Puppet::Resource::Param(Any, 'dsc_address'),

    # The specific backend to use for this `dsc_xwefsubscription`
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
