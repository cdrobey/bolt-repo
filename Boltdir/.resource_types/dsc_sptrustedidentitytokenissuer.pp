# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPTrustedIdentityTokenIssuer resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPTrustedIdentityTokenIssuer/MSFT_SPTrustedIdentityTokenIssuer.schema.mof'
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
  'dsc_sptrustedidentitytokenissuer',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the SPTrustedIdentityTokenIssuer
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Description - Description of the SPTrustedIdentityTokenIssuer
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Realm - Default Realm that is passed to identity provider
    Puppet::Resource::Param(Any, 'dsc_realm'),

    # SignInUrl - URL of the identity provider where user is redirected to for authentication
    Puppet::Resource::Param(Any, 'dsc_signinurl'),

    # IdentifierClaim - Identity claim type that uniquely identifies the user
    Puppet::Resource::Param(Any, 'dsc_identifierclaim'),

    # ClaimsMappings - Array of MSFT_SPClaimTypeMapping to use with cmdlet New-SPClaimTypeMapping
    Puppet::Resource::Param(Any, 'dsc_claimsmappings'),

    # SigningCertificateThumbprint - Specify the thumbprint of the signing certificate, which must be located in certificate store LocalMachine\My
    Puppet::Resource::Param(Any, 'dsc_signingcertificatethumbprint'),

    # SigningCertificateFilePath - Specify the file path to the signing certificate if it is not stored in the local certificate store already
    Puppet::Resource::Param(Any, 'dsc_signingcertificatefilepath'),

    # ClaimProviderName - Name of a claims provider to set with this SPTrustedIdentityTokenIssuer
    Puppet::Resource::Param(Any, 'dsc_claimprovidername'),

    # ProviderSignOutUri - Sign-out URL
    Puppet::Resource::Param(Any, 'dsc_providersignouturi'),

    # Ensure - Present if the SPTrustedIdentityTokenIssuer should be created, or Absent if it should be removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_sptrustedidentitytokenissuer`
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
