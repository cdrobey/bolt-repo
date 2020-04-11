# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC Registry resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_RegistryResource/MSFT_RegistryResource.schema.mof'
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
  'dsc_registry',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Key
    Puppet::Resource::Param(Any, 'dsc_key'),

    # ValueName
    Puppet::Resource::Param(Any, 'dsc_valuename'),

    # ValueData
    Puppet::Resource::Param(Any, 'dsc_valuedata'),

    # ValueType - Valid values are String, Binary, Dword, Qword, MultiString, ExpandString.
    Puppet::Resource::Param(Any, 'dsc_valuetype'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Hex
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_hex'),

    # Force
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # The specific backend to use for this `dsc_registry`
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
