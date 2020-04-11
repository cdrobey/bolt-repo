# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebConfigKeyValue resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebConfigKeyValue/MSFT_xWebConfigKeyValue.schema.mof'
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
  'dsc_xwebconfigkeyvalue',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebsitePath - Path to website location(IIS or WebAdministration format)
    Puppet::Resource::Param(Any, 'dsc_websitepath'),

    # ConfigSection - Config Section to be update Valid values are AppSettings.
    Puppet::Resource::Param(Any, 'dsc_configsection'),

    # Key - Key for AppSettings
    Puppet::Resource::Param(Any, 'dsc_key'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Value - Value for AppSettings
    Puppet::Resource::Param(Any, 'dsc_value'),

    # IsAttribute - If the given key value pair is for attribute, default is element
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isattribute'),

    # The specific backend to use for this `dsc_xwebconfigkeyvalue`
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
