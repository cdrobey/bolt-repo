# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchUMCallRouterSettings resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchUMCallRouterSettings/MSFT_xExchUMCallRouterSettings.schema.mof'
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
  'dsc_xexchumcallroutersettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Server - Hostname of the UM server to configure
    Puppet::Resource::Param(Any, 'dsc_server'),

    # Credential - Credentials used to establish a remote Powershell session to Exchange
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # UMStartupMode - UMStartupMode for the UM call router Valid values are TCP, TLS, Dual.
    Puppet::Resource::Param(Any, 'dsc_umstartupmode'),

    # DomainController - Optional Domain Controller to connect to
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # The specific backend to use for this `dsc_xexchumcallroutersettings`
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
