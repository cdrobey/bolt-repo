# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xPackage resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xPackageResource/MSFT_xPackageResource.schema.mof'
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
  'dsc_xpackage',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Path
    Puppet::Resource::Param(Any, 'dsc_path'),

    # ProductId
    Puppet::Resource::Param(Any, 'dsc_productid'),

    # Arguments
    Puppet::Resource::Param(Any, 'dsc_arguments'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # ReturnCode
    Puppet::Resource::Param(Any, 'dsc_returncode'),

    # LogPath
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # PackageDescription
    Puppet::Resource::Param(Any, 'dsc_packagedescription'),

    # Publisher
    Puppet::Resource::Param(Any, 'dsc_publisher'),

    # InstalledOn
    Puppet::Resource::Param(Any, 'dsc_installedon'),

    # Size
    Puppet::Resource::Param(Any, 'dsc_size'),

    # Version
    Puppet::Resource::Param(Any, 'dsc_version'),

    # Installed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_installed'),

    # FileHash
    Puppet::Resource::Param(Any, 'dsc_filehash'),

    # HashAlgorithm - Valid values are SHA1, SHA256, SHA384, SHA512, MD5, RIPEMD160.
    Puppet::Resource::Param(Any, 'dsc_hashalgorithm'),

    # SignerSubject
    Puppet::Resource::Param(Any, 'dsc_signersubject'),

    # SignerThumbprint
    Puppet::Resource::Param(Any, 'dsc_signerthumbprint'),

    # ServerCertificateValidationCallback
    Puppet::Resource::Param(Any, 'dsc_servercertificatevalidationcallback'),

    # InstalledCheckRegHive - Valid values are LocalMachine, CurrentUser.
    Puppet::Resource::Param(Any, 'dsc_installedcheckreghive'),

    # InstalledCheckRegKey
    Puppet::Resource::Param(Any, 'dsc_installedcheckregkey'),

    # InstalledCheckRegValueName
    Puppet::Resource::Param(Any, 'dsc_installedcheckregvaluename'),

    # InstalledCheckRegValueData
    Puppet::Resource::Param(Any, 'dsc_installedcheckregvaluedata'),

    # CreateCheckRegValue
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_createcheckregvalue'),

    # RunAsCredential
    Puppet::Resource::Param(Any, 'dsc_runascredential'),

    # The specific backend to use for this `dsc_xpackage`
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
