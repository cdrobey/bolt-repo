# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xPSEndpoint resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xPSSessionConfiguration/MSFT_xPSSessionConfiguration.schema.mof'
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
  'dsc_xpsendpoint',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the PS Remoting Endpoint
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Whether to create the endpoint or delete it Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # StartupScript - Path for the startup script
    Puppet::Resource::Param(Any, 'dsc_startupscript'),

    # RunAsCredential - Credential for Running under different user context
    Puppet::Resource::Param(Any, 'dsc_runascredential'),

    # SecurityDescriptorSDDL - SDDL for allowed users to connect to this endpoint
    Puppet::Resource::Param(Any, 'dsc_securitydescriptorsddl'),

    # AccessMode - Whether the endpoint is remotely accessible or has local access only or no access Valid values are Local, Remote, Disabled.
    Puppet::Resource::Param(Any, 'dsc_accessmode'),

    # The specific backend to use for this `dsc_xpsendpoint`
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
