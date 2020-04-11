# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchImapSettings resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchImapSettings/MSFT_xExchImapSettings.schema.mof'
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
  'dsc_xexchimapsettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Server
    Puppet::Resource::Param(Any, 'dsc_server'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # LoginType - Valid values are PlainTextLogin, PlainTextAuthentication, SecureLogin.
    Puppet::Resource::Param(Any, 'dsc_logintype'),

    # ExternalConnectionSettings
    Puppet::Resource::Param(Any, 'dsc_externalconnectionsettings'),

    # X509CertificateName
    Puppet::Resource::Param(Any, 'dsc_x509certificatename'),

    # The specific backend to use for this `dsc_xexchimapsettings`
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
