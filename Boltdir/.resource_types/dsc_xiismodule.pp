# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xIisModule resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xIisModule/MSFT_xIisModule.schema.mof'
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
  'dsc_xiismodule',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - The path to the module, usually a dll, to be added to IIS.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Name - The logical name of the module to add to IIS.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # RequestPath - The allowed request Path example: *.php
    Puppet::Resource::Param(Any, 'dsc_requestpath'),

    # Verb - The supported verbs for the module.
    Puppet::Resource::Param(Any, 'dsc_verb'),

    # SiteName - The IIS Site to register the module.
    Puppet::Resource::Param(Any, 'dsc_sitename'),

    # Ensure - Should the module be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ModuleType - The type of the module. Valid values are FastCgiModule.
    Puppet::Resource::Param(Any, 'dsc_moduletype'),

    # EndPointSetup - The End Point is setup.  Such as a Fast Cgi endpoint.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_endpointsetup'),

    # The specific backend to use for this `dsc_xiismodule`
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
