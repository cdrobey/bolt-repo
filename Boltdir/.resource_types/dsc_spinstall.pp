# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPInstall resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPInstall/MSFT_SPInstall.schema.mof'
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
  'dsc_spinstall',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # BinaryDir - The directory that contains all of the SharePoint binaries
    Puppet::Resource::Param(Any, 'dsc_binarydir'),

    # ProductKey - The product key to use during the installation
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # InstallPath - The install directory to use in the installation, leave blank to use the setup defaults
    Puppet::Resource::Param(Any, 'dsc_installpath'),

    # DataPath - The data directory to use in the installation, leave blank to use the setup defaults
    Puppet::Resource::Param(Any, 'dsc_datapath'),

    # Ensure - Present to install SharePoint. Absent is currently not supported Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_spinstall`
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
