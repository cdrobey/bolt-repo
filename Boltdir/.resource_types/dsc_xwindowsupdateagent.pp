# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWindowsUpdateAgent resource type.
# Automatically generated from
# 'xWindowsUpdate/DscResources/MSFT_xWindowsUpdateAgent/MSFT_xWindowsUpdateAgent.schema.mof'
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
  'dsc_xwindowsupdateagent',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes' Valid values are Yes.
    Puppet::Resource::Param(Any, 'dsc_issingleinstance'),

    # Category - Indicates if the resource should ensure all Windows Updates are installed or if Automatic updates should be disabled. Valid values are Security, Important, Optional.
    Puppet::Resource::Param(Any, 'dsc_category'),

    # Notifications - Indicates if Windows update agent should notify about updates, see:https://msdn.microsoft.com/en-us/library/windows/desktop/aa385806%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396. Valid values are Disabled, ScheduledInstallation.
    Puppet::Resource::Param(Any, 'dsc_notifications'),

    # Source - Indicates which source service Windows update agent should use.  Note: WSUS is not implemented in this resource. Valid values are WindowsUpdate, MicrosoftUpdate, WSUS.
    Puppet::Resource::Param(Any, 'dsc_source'),

    # UpdateNow - Indicates if the resource should trigger an update during consistency.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_updatenow'),

    # AutomaticUpdatesNotificationSetting - Automatic Updates Notification Setting
    Puppet::Resource::Param(Any, 'dsc_automaticupdatesnotificationsetting'),

    # TotalUpdatesNotInstalled - Count of updates not installed.  Only returned if UpdateNow is specified.
    Puppet::Resource::Param(Any, 'dsc_totalupdatesnotinstalled'),

    # RebootRequired - Indicates if Wua Requires a reboot.  Only returned if UpdateNow is specified.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_rebootrequired'),

    # The specific backend to use for this `dsc_xwindowsupdateagent`
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
