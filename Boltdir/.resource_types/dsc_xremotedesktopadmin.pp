# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRemoteDesktopAdmin resource type.
# Automatically generated from
# 'xRemoteDesktopAdmin/DSCResources/xRemoteDesktopAdmin/xRemoteDesktopAdmin.schema.mof'
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
  'dsc_xremotedesktopadmin',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Determines whether or not the computer should accept remote connections.  Present sets the value to Enabled and Absent sets the value to Disabled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # UserAuthentication - User Authentication.  Setting this value to Secure configures the machine to require NLA. Valid values are Secure, NonSecure.
    Puppet::Resource::Param(Any, 'dsc_userauthentication'),

    # The specific backend to use for this `dsc_xremotedesktopadmin`
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
