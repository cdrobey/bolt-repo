# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchExchangeServer resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchExchangeServer/MSFT_xExchExchangeServer.schema.mof'
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
  'dsc_xexchexchangeserver',
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

    # CustomerFeedbackEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_customerfeedbackenabled'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # InternetWebProxy
    Puppet::Resource::Param(Any, 'dsc_internetwebproxy'),

    # MonitoringGroup
    Puppet::Resource::Param(Any, 'dsc_monitoringgroup'),

    # ProductKey
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # WorkloadManagementPolicy
    Puppet::Resource::Param(Any, 'dsc_workloadmanagementpolicy'),

    # The specific backend to use for this `dsc_xexchexchangeserver`
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
