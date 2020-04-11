# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCSPFSetting resource type.
# Automatically generated from
# 'xSCSPF/DSCResources/MSFT_xSCSPFSetting/MSFT_xSCSPFSetting.schema.mof'
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
  'dsc_xscspfsetting',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the SPF setting exists.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ServerName - Specifies the name of the server the setting is associated with.
    Puppet::Resource::Param(Any, 'dsc_servername'),

    # SettingType - Specifies either DatabaseConnectionString or EndPointConnectionString. Valid values are DatabaseConnectionString, EndPointConnectionString.
    Puppet::Resource::Param(Any, 'dsc_settingtype'),

    # Name - Specifies a friendly name for the setting.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Value - Specifies the value for the setting.
    Puppet::Resource::Param(Any, 'dsc_value'),

    # SCSPFAdminCredential - Credential with admin permissions to Service Provider Foundation.
    Puppet::Resource::Param(Any, 'dsc_scspfadmincredential'),

    # The specific backend to use for this `dsc_xscspfsetting`
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
