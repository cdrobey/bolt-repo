# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPInstallPrereqs resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPInstallPrereqs/MSFT_SPInstallPrereqs.schema.mof'
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
  'dsc_spinstallprereqs',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstallerPath - The full path to prerequisiteinstaller.exe
    Puppet::Resource::Param(Any, 'dsc_installerpath'),

    # OnlineMode - Should the installer download prerequisites from the internet or not
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_onlinemode'),

    # SXSpath - The path to the Windows Server Operating System SXS source files, for use in closed environments without access to Windows Update
    Puppet::Resource::Param(Any, 'dsc_sxspath'),

    # SQLNCli - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_sqlncli'),

    # PowerShell - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_powershell'),

    # NETFX - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_netfx'),

    # IDFX - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_idfx'),

    # Sync - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_sync'),

    # AppFabric - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_appfabric'),

    # IDFX11 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_idfx11'),

    # MSIPCClient - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_msipcclient'),

    # WCFDataServices - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_wcfdataservices'),

    # KB2671763 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_kb2671763'),

    # WCFDataServices56 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_wcfdataservices56'),

    # MSVCRT11 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_msvcrt11'),

    # MSVCRT14 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_msvcrt14'),

    # KB3092423 - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_kb3092423'),

    # ODBC - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_odbc'),

    # DotNetFx - The path to the installer for this prerequisite
    Puppet::Resource::Param(Any, 'dsc_dotnetfx'),

    # Ensure - Present to install the prerequisites. Absent is currently not supported Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_spinstallprereqs`
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
