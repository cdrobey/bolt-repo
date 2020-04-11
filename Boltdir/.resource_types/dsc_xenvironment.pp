# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xEnvironment resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xEnvironmentResource/MSFT_xEnvironmentResource.schema.mof'
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
  'dsc_xenvironment',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the environment variable for which you want to ensure a specific state.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Value - The desired value for the environment variable.
    Puppet::Resource::Param(Any, 'dsc_value'),

    # Ensure - Specifies if the environment varaible should exist. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Path - Indicates whether or not the environment variable is the Path variable.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_path'),

    # Target - Indicates the target where the environment variable should be set. Valid values are Process, Machine.
    Puppet::Resource::Param(Any, 'dsc_target'),

    # The specific backend to use for this `dsc_xenvironment`
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
