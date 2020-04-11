# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xPfxImport resource type.
# Automatically generated from
# 'xCertificate/DSCResources/MSFT_xPfxImport/MSFT_xPfxImport.schema.mof'
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
  'dsc_xpfximport',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Thumbprint - The thumbprint (unique identifier) of the PFX file you're importing.
    Puppet::Resource::Param(Any, 'dsc_thumbprint'),

    # Path - The path to the PFX file you want to import.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Location - The Windows Certificate Store Location to import the PFX file to. Valid values are LocalMachine, CurrentUser.
    Puppet::Resource::Param(Any, 'dsc_location'),

    # Store - The Windows Certificate Store Name to import the PFX file to.
    Puppet::Resource::Param(Any, 'dsc_store'),

    # Exportable - Determines whether the private key is exportable from the machine after it has been imported
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_exportable'),

    # Credential - A [PSCredential] object that is used to decrypt the PFX file.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Specifies whether the PFX file should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xpfximport`
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
