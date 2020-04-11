# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchExchangeCertificate resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchExchangeCertificate/MSFT_xExchExchangeCertificate.schema.mof'
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
  'dsc_xexchexchangecertificate',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Thumbprint
    Puppet::Resource::Param(Any, 'dsc_thumbprint'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AllowExtraServices
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowextraservices'),

    # CertCreds
    Puppet::Resource::Param(Any, 'dsc_certcreds'),

    # CertFilePath
    Puppet::Resource::Param(Any, 'dsc_certfilepath'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # Services
    Puppet::Resource::Param(Any, 'dsc_services'),

    # The specific backend to use for this `dsc_xexchexchangecertificate`
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
