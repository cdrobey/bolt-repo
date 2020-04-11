# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSSLSettings resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xSSLSettings/MSFT_xSSLSettings.schema.mof'
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
  'dsc_xsslsettings',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of website in which to modify the SSL Settings
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Bindings - The Bindings in which to modify for the website Valid values are , Ssl, SslNegotiateCert, SslRequireCert, Ssl128.
    Puppet::Resource::Param(Any, 'dsc_bindings'),

    # Ensure - Whether the bindings should be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xsslsettings`
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
