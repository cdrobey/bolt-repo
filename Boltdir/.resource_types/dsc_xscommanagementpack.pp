# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCOMManagementPack resource type.
# Automatically generated from
# 'xSCOM/DSCResources/MSFT_xSCOMManagementPack/MSFT_xSCOMManagementPack.schema.mof'
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
  'dsc_xscommanagementpack',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the Management Pack.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Version - Specific version of the Management Pack, overrides MinVersion if both set.
    Puppet::Resource::Param(Any, 'dsc_version'),

    # MinVersion - Minimum version of the Management Pack, overridden by Version if both set.
    Puppet::Resource::Param(Any, 'dsc_minversion'),

    # SCOMAdminCredential - Credential with admin permissions to Operations Manager.
    Puppet::Resource::Param(Any, 'dsc_scomadmincredential'),

    # SourcePath - UNC path to the root of the source files for installation, if omitted the Operations Manager installation folder will be used.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SourceFolder - Folder within the source path containing the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcefolder'),

    # SourceFile - Name of the file in the source folder for the Management Pack.
    Puppet::Resource::Param(Any, 'dsc_sourcefile'),

    # The specific backend to use for this `dsc_xscommanagementpack`
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
