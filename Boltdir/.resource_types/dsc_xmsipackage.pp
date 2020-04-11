# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xMsiPackage resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xMsiPackage/MSFT_xMsiPackage.schema.mof'
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
  'dsc_xmsipackage',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ProductId - The identifying number used to find the package, usually a GUID.
    Puppet::Resource::Param(Any, 'dsc_productid'),

    # Path - The path to the MSI file that should be installed or uninstalled.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Ensure - Specifies whether or not the MSI file should be installed or uninstalled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Arguments - The arguments to be passed to the MSI package during installation or uninstallation.
    Puppet::Resource::Param(Any, 'dsc_arguments'),

    # Credential - The credential of a user account to be used to mount a UNC path if needed.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # LogPath - The path to the log file to log the output from the MSI execution.
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # FileHash - The expected hash value of the MSI file at the given path.
    Puppet::Resource::Param(Any, 'dsc_filehash'),

    # HashAlgorithm - The algorithm used to generate the given hash value. Valid values are SHA1, SHA256, SHA384, SHA512, MD5, RIPEMD160.
    Puppet::Resource::Param(Any, 'dsc_hashalgorithm'),

    # SignerSubject - The subject that should match the signer certificate of the digital signature of the MSI file.
    Puppet::Resource::Param(Any, 'dsc_signersubject'),

    # SignerThumbprint - The certificate thumbprint that should match the signer certificate of the digital signature of the MSI file.
    Puppet::Resource::Param(Any, 'dsc_signerthumbprint'),

    # ServerCertificateValidationCallback - PowerShell code that should be used to validate SSL certificates for paths using HTTPS.
    Puppet::Resource::Param(Any, 'dsc_servercertificatevalidationcallback'),

    # RunAsCredential - The credential of a user account under which to run the installation or uninstallation of the MSI package.
    Puppet::Resource::Param(Any, 'dsc_runascredential'),

    # Name - The display name of the MSI package.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # InstallSource - The path to the MSI package.
    Puppet::Resource::Param(Any, 'dsc_installsource'),

    # InstalledOn - The date that the MSI package was installed on or serviced on, whichever is later.
    Puppet::Resource::Param(Any, 'dsc_installedon'),

    # Size - The size of the MSI package in MB.
    Puppet::Resource::Param(Any, 'dsc_size'),

    # Version - The version number of the MSI package.
    Puppet::Resource::Param(Any, 'dsc_version'),

    # PackageDescription - The description of the MSI package.
    Puppet::Resource::Param(Any, 'dsc_packagedescription'),

    # Publisher - The publisher of the MSI package.
    Puppet::Resource::Param(Any, 'dsc_publisher'),

    # The specific backend to use for this `dsc_xmsipackage`
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
