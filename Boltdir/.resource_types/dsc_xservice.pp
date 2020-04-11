# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xService resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xServiceResource/MSFT_xServiceResource.schema.mof'
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
  'dsc_xservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Indicates the service name. Note that sometimes this is different from the display name. You can get a list of the services and their current state with the Get-Service cmdlet.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Ensures that the service is present or absent. Defaults to Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Path - The path to the service executable file.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # StartupType - Indicates the startup type for the service. Valid values are Automatic, Manual, Disabled.
    Puppet::Resource::Param(Any, 'dsc_startuptype'),

    # BuiltInAccount - Indicates the sign-in account to use for the service. Valid values are LocalSystem, LocalService, NetworkService.
    Puppet::Resource::Param(Any, 'dsc_builtinaccount'),

    # Credential - The credential to run the service under.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # DesktopInteract - The service can create or communicate with a window on the desktop. Must be false for services not running as LocalSystem. Defaults to False.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_desktopinteract'),

    # State - Indicates the state you want to ensure for the service. Defaults to Running. Valid values are Running, Stopped, Ignore.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # DisplayName - The display name of the service.
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Description - The description of the service.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Dependencies - An array of strings indicating the names of the dependencies of the service.
    Puppet::Resource::Param(Any, 'dsc_dependencies'),

    # StartupTimeout - The time to wait for the service to start in milliseconds. Defaults to 30000.
    Puppet::Resource::Param(Any, 'dsc_startuptimeout'),

    # TerminateTimeout - The time to wait for the service to stop in milliseconds. Defaults to 30000.
    Puppet::Resource::Param(Any, 'dsc_terminatetimeout'),

    # The specific backend to use for this `dsc_xservice`
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
