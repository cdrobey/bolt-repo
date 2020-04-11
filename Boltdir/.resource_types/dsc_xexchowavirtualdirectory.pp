# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchOwaVirtualDirectory resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchOwaVirtualDirectory/MSFT_xExchOwaVirtualDirectory.schema.mof'
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
  'dsc_xexchowavirtualdirectory',
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

    # AdfsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_adfsauthentication'),

    # AllowServiceRestart
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowservicerestart'),

    # BasicAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_basicauthentication'),

    # ChangePasswordEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_changepasswordenabled'),

    # DigestAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_digestauthentication'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # ExternalAuthenticationMethods
    Puppet::Resource::Param(Any, 'dsc_externalauthenticationmethods'),

    # ExternalUrl
    Puppet::Resource::Param(Any, 'dsc_externalurl'),

    # FormsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_formsauthentication'),

    # InternalUrl
    Puppet::Resource::Param(Any, 'dsc_internalurl'),

    # InstantMessagingEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_instantmessagingenabled'),

    # InstantMessagingCertificateThumbprint
    Puppet::Resource::Param(Any, 'dsc_instantmessagingcertificatethumbprint'),

    # InstantMessagingServerName
    Puppet::Resource::Param(Any, 'dsc_instantmessagingservername'),

    # InstantMessagingType - Valid values are None, Ocs.
    Puppet::Resource::Param(Any, 'dsc_instantmessagingtype'),

    # LogonPagePublicPrivateSelectionEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_logonpagepublicprivateselectionenabled'),

    # LogonPageLightSelectionEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_logonpagelightselectionenabled'),

    # WindowsAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windowsauthentication'),

    # LogonFormat - Valid values are FullDomain, UserName, PrincipalName.
    Puppet::Resource::Param(Any, 'dsc_logonformat'),

    # DefaultDomain
    Puppet::Resource::Param(Any, 'dsc_defaultdomain'),

    # The specific backend to use for this `dsc_xexchowavirtualdirectory`
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
