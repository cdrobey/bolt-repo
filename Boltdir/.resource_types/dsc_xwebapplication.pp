# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebApplication resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebApplication/MSFT_xWebApplication.schema.mof'
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
  'dsc_xwebapplication',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Website - Name of website with which web application is associated
    Puppet::Resource::Param(Any, 'dsc_website'),

    # Name - Name of web application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # WebAppPool - Web application pool for the web application
    Puppet::Resource::Param(Any, 'dsc_webapppool'),

    # PhysicalPath - Physical path for the web application directory
    Puppet::Resource::Param(Any, 'dsc_physicalpath'),

    # Ensure - Whether web application should be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SslFlags - SSLFlags for the application Valid values are , Ssl, SslNegotiateCert, SslRequireCert, Ssl128.
    Puppet::Resource::Param(Any, 'dsc_sslflags'),

    # AuthenticationInfo - Hashtable containing authentication information (Anonymous, Basic, Digest, Windows)
    Puppet::Resource::Param(Any, 'dsc_authenticationinfo'),

    # PreloadEnabled - Allows a Application to automatically start without a request
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_preloadenabled'),

    # ServiceAutoStartEnabled - Enables Autostart on an Application.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_serviceautostartenabled'),

    # ServiceAutoStartProvider - Adds a AutostartProvider
    Puppet::Resource::Param(Any, 'dsc_serviceautostartprovider'),

    # ApplicationType - Adds a AutostartProvider ApplicationType
    Puppet::Resource::Param(Any, 'dsc_applicationtype'),

    # EnabledProtocols - Adds EnabledProtocols on an Application Valid values are http, https, net.tcp, net.msmq, net.pipe.
    Puppet::Resource::Param(Any, 'dsc_enabledprotocols'),

    # The specific backend to use for this `dsc_xwebapplication`
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
