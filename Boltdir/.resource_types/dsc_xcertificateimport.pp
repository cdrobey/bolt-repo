# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xCertificateImport resource type.
# Automatically generated from
# 'xCertificate/DSCResources/MSFT_xCertificateImport/MSFT_xCertificateImport.schema.mof'
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
  'dsc_xcertificateimport',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Thumbprint - The thumbprint (unique identifier) of the certificate you're importing.
    Puppet::Resource::Param(Any, 'dsc_thumbprint'),

    # Path - The path to the CER file you want to import.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Location - The Windows Certificate Store Location to import the certificate to. Valid values are LocalMachine, CurrentUser.
    Puppet::Resource::Param(Any, 'dsc_location'),

    # Store - The Windows Certificate Store Name to import the certificate to.
    Puppet::Resource::Param(Any, 'dsc_store'),

    # Ensure - Specifies whether the certificate should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xcertificateimport`
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
