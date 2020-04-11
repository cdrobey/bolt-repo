# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchUMService resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchUMService/MSFT_xExchUMService.schema.mof'
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
  'dsc_xexchumservice',
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

    # UMStartupMode - Valid values are TCP, TLS, Dual.
    Puppet::Resource::Param(Any, 'dsc_umstartupmode'),

    # DialPlans
    Puppet::Resource::Param(Any, 'dsc_dialplans'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # The specific backend to use for this `dsc_xexchumservice`
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
