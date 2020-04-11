# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC Service resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_ServiceResource/MSFT_ServiceResource.schema.mof'
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
  'dsc_service',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # State - Valid values are Running, Stopped.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # StartupType - Valid values are Automatic, Manual, Disabled.
    Puppet::Resource::Param(Any, 'dsc_startuptype'),

    # BuiltInAccount - Valid values are LocalSystem, LocalService, NetworkService.
    Puppet::Resource::Param(Any, 'dsc_builtinaccount'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Status
    Puppet::Resource::Param(Any, 'dsc_status'),

    # DisplayName
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Description
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Path
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Dependencies
    Puppet::Resource::Param(Any, 'dsc_dependencies'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_service`
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
