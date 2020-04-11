# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAdcsCertificationAuthority resource type.
# Automatically generated from
# 'xAdcsDeployment/DSCResources/MSFT_xAdcsCertificationAuthority/MSFT_xAdcsCertificationAuthority.schema.mof'
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
  'dsc_xadcscertificationauthority',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # CAType - Specifies the type of certification authority to install. The possible values are EnterpriseRootCA, EnterpriseSubordinateCA, StandaloneRootCA, or StandaloneSubordinateCA. Valid values are EnterpriseRootCA, EnterpriseSubordinateCA, StandaloneRootCA, StandaloneSubordinateCA.
    Puppet::Resource::Param(Any, 'dsc_catype'),

    # Credential - To install an enterprise certification authority, the computer must be joined to an Active Directory Domain Services domain and a user account that is a member of the Enterprise Admin group is required. To install a standalone certification authority, the computer can be in a workgroup or AD DS domain. If the computer is in a workgroup, a user account that is a member of Administrators is required. If the computer is in an AD DS domain, a user account that is a member of Domain Admins is required.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Specifies whether the Certificate Authority should be installed or uninstalled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # CACommonName - Specifies the certification authority common name.
    Puppet::Resource::Param(Any, 'dsc_cacommonname'),

    # CADistinguishedNameSuffix - Specifies the certification authority distinguished name suffix.
    Puppet::Resource::Param(Any, 'dsc_cadistinguishednamesuffix'),

    # CertFile - Specifies the file name of certification authority PKCS 12 formatted certificate file.
    Puppet::Resource::Param(Any, 'dsc_certfile'),

    # CertFilePassword - Specifies the password for certification authority certificate file.
    Puppet::Resource::Param(Any, 'dsc_certfilepassword'),

    # CertificateID - Specifies the thumbprint or serial number of certification authority certificate.
    Puppet::Resource::Param(Any, 'dsc_certificateid'),

    # CryptoProviderName - The name of the cryptographic service provider or key storage provider that is used to generate or store the private key for the CA.
    Puppet::Resource::Param(Any, 'dsc_cryptoprovidername'),

    # DatabaseDirectory - Specifies the folder location of the certification authority database.
    Puppet::Resource::Param(Any, 'dsc_databasedirectory'),

    # HashAlgorithmName - Specifies the signature hash algorithm used by the certification authority.
    Puppet::Resource::Param(Any, 'dsc_hashalgorithmname'),

    # IgnoreUnicode - Specifies that Unicode characters are allowed in certification authority name string.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ignoreunicode'),

    # KeyContainerName - Specifies the name of an existing private key container.
    Puppet::Resource::Param(Any, 'dsc_keycontainername'),

    # KeyLength - Specifies the bit length for new certification authority key.
    Puppet::Resource::Param(Any, 'dsc_keylength'),

    # LogDirectory - Specifies the folder location of the certification authority database log.
    Puppet::Resource::Param(Any, 'dsc_logdirectory'),

    # OutputCertRequestFile - Specifies the folder location for certificate request file.
    Puppet::Resource::Param(Any, 'dsc_outputcertrequestfile'),

    # OverwriteExistingCAinDS - Specifies that the computer object in the Active Directory Domain Service domain should be overwritten with the same computer name.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_overwriteexistingcainds'),

    # OverwriteExistingDatabase - Specifies that the existing certification authority database should be overwritten.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_overwriteexistingdatabase'),

    # OverwriteExistingKey - Overwrite existing key container with the same name
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_overwriteexistingkey'),

    # ParentCA - Specifies the configuration string of the parent certification authority that will certify this CA.
    Puppet::Resource::Param(Any, 'dsc_parentca'),

    # ValidityPeriod - Specifies the validity period of the certification authority certificate in hours, days, weeks, months or years. If this is a subordinate CA, do not use this parameter, because the validity period is determined by the parent CA. Valid values are Hours, Days, Months, Years.
    Puppet::Resource::Param(Any, 'dsc_validityperiod'),

    # ValidityPeriodUnits - Validity period of the certification authority certificate. If this is a subordinate CA, do not specify this parameter because the validity period is determined by the parent CA.
    Puppet::Resource::Param(Any, 'dsc_validityperiodunits'),

    # The specific backend to use for this `dsc_xadcscertificationauthority`
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
