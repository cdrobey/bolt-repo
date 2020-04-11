# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPInstallLanguagePack resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPInstallLanguagePack/MSFT_SPInstallLanguagePack.schema.mof'
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
  'dsc_spinstalllanguagepack',
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

    # BinaryInstallDays - Specify on which dates the installation is allowed Valid values are mon, tue, wed, thu, fri, sat, sun.
    Puppet::Resource::Param(Any, 'dsc_binaryinstalldays'),

    # BinaryInstallTime - Specify in which time frame the installation is allowed
    Puppet::Resource::Param(Any, 'dsc_binaryinstalltime'),

    # Ensure - Present to install SharePoint. Absent is currently not supported Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spinstalllanguagepack`
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
