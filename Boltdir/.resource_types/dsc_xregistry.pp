# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRegistry resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xRegistryResource/MSFT_xRegistryResource.schema.mof'
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
  'dsc_xregistry',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Key - The path of the registry key to add, modify, or remove. This path must include the registry hive/drive.
    Puppet::Resource::Param(Any, 'dsc_key'),

    # ValueName - The name of the registry value. To add or remove a registry key, specify this property as an empty string without specifying ValueType or ValueData. To modify or remove the default value of a registry key, specify this property as an empty string while also specifying ValueType or ValueData.
    Puppet::Resource::Param(Any, 'dsc_valuename'),

    # ValueData - The data the specified registry key value should have as a string or an array of strings (MultiString only).
    Puppet::Resource::Param(Any, 'dsc_valuedata'),

    # ValueType - The type the specified registry key value should have. Valid values are String, Binary, DWord, QWord, MultiString, ExpandString.
    Puppet::Resource::Param(Any, 'dsc_valuetype'),

    # Ensure - Specifies whether or not the registry key or value should exist. To add or modify a registry key or value, set this property to Present. To remove a registry key or value, set the property to Absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Hex - Specifies whether or not the specified DWord or QWord registry key data is provided in a hexadecimal format. Not valid for types other than DWord and QWord. The default value is $false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_hex'),

    # Force - Specifies whether or not to overwrite the specified registry key value if it already has a value or whether or not to delete a registry key that has subkeys. The default value is $false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # The specific backend to use for this `dsc_xregistry`
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
