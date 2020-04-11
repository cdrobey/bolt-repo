# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchMailboxTransportService resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchMailboxTransportService/MSFT_xExchMailboxTransportService.schema.mof'
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
  'dsc_xexchmailboxtransportservice',
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

    # MaxConcurrentMailboxDeliveries
    Puppet::Resource::Param(Any, 'dsc_maxconcurrentmailboxdeliveries'),

    # MaxConcurrentMailboxSubmissions
    Puppet::Resource::Param(Any, 'dsc_maxconcurrentmailboxsubmissions'),

    # PipelineTracingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pipelinetracingenabled'),

    # PipelineTracingPath
    Puppet::Resource::Param(Any, 'dsc_pipelinetracingpath'),

    # PipelineTracingSenderAddress
    Puppet::Resource::Param(Any, 'dsc_pipelinetracingsenderaddress'),

    # ReceiveProtocolLogMaxAge
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxage'),

    # ReceiveProtocolLogMaxDirectorySize
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxdirectorysize'),

    # ReceiveProtocolLogMaxFileSize
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogmaxfilesize'),

    # ReceiveProtocolLogPath
    Puppet::Resource::Param(Any, 'dsc_receiveprotocollogpath'),

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

    # The specific backend to use for this `dsc_xexchmailboxtransportservice`
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
