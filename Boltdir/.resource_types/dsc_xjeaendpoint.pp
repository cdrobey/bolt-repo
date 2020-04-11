# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xJeaEndPoint resource type.
# Automatically generated from
# 'xJea/DSCResources/MSFT_xJeaEndpoint/MSFT_xJeaEndpoint.schema.mof'
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
  'dsc_xjeaendpoint',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the JEA toolkit to be generated
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Toolkit - List of Jea Toolkits to make available via this endpoint
    Puppet::Resource::Param(Any, 'dsc_toolkit'),

    # SecurityDescriptorSddl - Sddl to define who can access this JeaEndpoint
    Puppet::Resource::Param(Any, 'dsc_securitydescriptorsddl'),

    # Group - List of local groups that this Endpoints JeaSessionAccount should be a member of
    Puppet::Resource::Param(Any, 'dsc_group'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # CleanAll
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cleanall'),

    # The specific backend to use for this `dsc_xjeaendpoint`
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
