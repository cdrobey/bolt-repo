# This file was automatically generated on 2020-04-10 21:03:50 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage an IIS applications.
Puppet::Resource::ResourceType3.new(
  'iis_application',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The name of the site for this IIS Web Application
    Puppet::Resource::Param(Any, 'sitename'),

    # The physical path to the IIS web application folder
    Puppet::Resource::Param(Any, 'physicalpath'),

    # The name of an ApplicationPool for this IIS Web Application
    Puppet::Resource::Param(Any, 'applicationpool'),

    # The ssl settings for the application.
    # 
    # Valid values are `Ssl`, `SslRequireCert`, `SslNegotiateCert`, `Ssl128`.
    Puppet::Resource::Param(Enum['Ssl', 'SslRequireCert', 'SslNegotiateCert', 'Ssl128'], 'sslflags'),

    # Enable and disable authentication schemas
    Puppet::Resource::Param(Any, 'authenticationinfo'),

    # Sets the enabled protocols for the application
    Puppet::Resource::Param(Any, 'enabledprotocols')
  ],
  [
    # The name of the Application. The virtual path of an application is /<applicationname>
    Puppet::Resource::Param(Any, 'applicationname', true),

    # The Web Virtual Directory to convert to a Web Application on create.
    Puppet::Resource::Param(Any, 'virtual_directory'),

    # The specific backend to use for this `iis_application`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # webadministration
    # : IIS Application provider using the PowerShell WebAdministration module
    # 
    #   * Required binaries: `powershell.exe`.
    #   * Default for `operatingsystem` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /^([^\\]+)\\([^\\]+)$/ => ['sitename', 'applicationname'],
    /^([^\\]+)$/ => ['applicationname']
  },
  true,
  false)
