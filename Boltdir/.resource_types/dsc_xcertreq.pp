# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xCertReq resource type.
# Automatically generated from
# 'xCertificate/DSCResources/MSFT_xCertReq/MSFT_xCertReq.schema.mof'
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
  'dsc_xcertreq',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Subject - Provide the text string to use as the subject of the certificate.
    Puppet::Resource::Param(Any, 'dsc_subject'),

    # CAType - The type of CA in use, Standalone/Enterprise.
    Puppet::Resource::Param(Any, 'dsc_catype'),

    # CAServerFQDN - The FQDN of the Active Directory Certificate Authority on the local area network. Leave empty to automatically locate.
    Puppet::Resource::Param(Any, 'dsc_caserverfqdn'),

    # CARootName - The name of the certificate authority, by default this will be in format domain-servername-ca. Leave empty to automatically locate.
    Puppet::Resource::Param(Any, 'dsc_carootname'),

    # KeyLength - The bit length of the encryption key to be used. Defaults to 2048. Valid values are 1024, 2048, 4096, 8192.
    Puppet::Resource::Param(Any, 'dsc_keylength'),

    # Exportable - The option to allow the certificate to be exportable, by default it will be true.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_exportable'),

    # ProviderName - The selection of provider for the type of encryption to be used.
    Puppet::Resource::Param(Any, 'dsc_providername'),

    # OID - The Object Identifier that is used to name the object.
    Puppet::Resource::Param(Any, 'dsc_oid'),

    # KeyUsage - The Keyusage is a restriction method that determines what a certificate can be used for.
    Puppet::Resource::Param(Any, 'dsc_keyusage'),

    # CertificateTemplate - The template used for the definition of the certificate.
    Puppet::Resource::Param(Any, 'dsc_certificatetemplate'),

    # SubjectAltName - The subject alternative name used to create the certificate.
    Puppet::Resource::Param(Any, 'dsc_subjectaltname'),

    # Credential - The credentials that will be used to access the template in the Certificate Authority.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AutoRenew - Determines if the resource will also renew a certificate within 7 days of expiration.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autorenew'),

    # CepURL - The URL to the Certification Enrollment Policy Service.
    Puppet::Resource::Param(Any, 'dsc_cepurl'),

    # CesURL - The URL to the Certification Enrollment Service.
    Puppet::Resource::Param(Any, 'dsc_cesurl'),

    # UseMachineContext - Indicates whether or not the flag -adminforcemachine will be used when requesting certificates. Necessary for certain templates like e.g. DomainControllerAuthentication
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usemachinecontext'),

    # FriendlyName - Specifies a friendly name for the certificate.
    Puppet::Resource::Param(Any, 'dsc_friendlyname'),

    # The specific backend to use for this `dsc_xcertreq`
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
