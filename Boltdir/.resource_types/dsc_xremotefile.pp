# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRemoteFile resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xRemoteFile/MSFT_xRemoteFile.schema.mof'
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
  'dsc_xremotefile',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DestinationPath - Path under which downloaded or copied file should be accessible after operation.
    Puppet::Resource::Param(Any, 'dsc_destinationpath'),

    # Uri - Uri of a file which should be copied or downloaded. This parameter supports HTTP and HTTPS values.
    Puppet::Resource::Param(Any, 'dsc_uri'),

    # UserAgent - User agent for the web request.
    Puppet::Resource::Param(Any, 'dsc_useragent'),

    # Headers - Headers of the web request.
    Puppet::Resource::Param(Any, 'dsc_headers'),

    # Credential - Specifies a user account that has permission to send the request.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # MatchSource - A boolean value to indicate whether the remote file should be re-downloaded if the file in the DestinationPath was modified locally.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_matchsource'),

    # TimeoutSec - Specifies how long the request can be pending before it times out.
    Puppet::Resource::Param(Any, 'dsc_timeoutsec'),

    # Proxy - Uses a proxy server for the request, rather than connecting directly to the Internet resource. Should be the URI of a network proxy server (e.g 'http://10.20.30.1').
    Puppet::Resource::Param(Any, 'dsc_proxy'),

    # ProxyCredential - Specifies a user account that has permission to use the proxy server that is specified by the Proxy parameter.
    Puppet::Resource::Param(Any, 'dsc_proxycredential'),

    # Ensure - Says whether DestinationPath exists on the machine Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xremotefile`
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
