# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xCertificateExport resource type.
# Automatically generated from
# 'xCertificate/DSCResources/MSFT_xCertificateExport/MSFT_xCertificateExport.schema.mof'
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
  'dsc_xcertificateexport',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - The path to the file you that will contain the exported certificate.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Thumbprint - The thumbprint of the certificate to export. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_thumbprint'),

    # FriendlyName - The friendly name of the certificate to export. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_friendlyname'),

    # Subject - The subject of the certificate to export. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_subject'),

    # DNSName - The subject alternative name of the certificate to export must contain these values. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_dnsname'),

    # Issuer - The issuer of the certificate to export. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_issuer'),

    # KeyUsage - The key usage of the certificate to export must contain these values. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_keyusage'),

    # EnhancedKeyUsage - The enhanced key usage of the certificate to export must contain these values. Certificate selector parameter.
    Puppet::Resource::Param(Any, 'dsc_enhancedkeyusage'),

    # Store - The Windows Certificate Store Name to search for the certificate to export from. Certificate selector parameter. Defaults to 'My'.
    Puppet::Resource::Param(Any, 'dsc_store'),

    # AllowExpired - Allow an expired certificate to be exported. Certificate selector parameter.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowexpired'),

    # MatchSource - Causes an existing exported certificate to be compared with the certificate identified for export and re-exported if it does not match.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_matchsource'),

    # Type - Specifies the type of certificate to export. Valid values are Cert, P7B, SST, PFX.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # ChainOption - Specifies the options for building a chain when exporting a PFX certificate. Valid values are BuildChain, EndEntityCertOnly.
    Puppet::Resource::Param(Any, 'dsc_chainoption'),

    # Password - Specifies the password used to protect an exported PFX file.
    Puppet::Resource::Param(Any, 'dsc_password'),

    # ProtectTo - Specifies an array of strings for the username or group name that can access the private key of an exported PFX file without any password.
    Puppet::Resource::Param(Any, 'dsc_protectto'),

    # IsExported - Returns true if the certificate file already exists and therefore has been exported.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isexported'),

    # The specific backend to use for this `dsc_xcertificateexport`
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
