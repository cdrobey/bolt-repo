# This file was automatically generated on 2020-04-10 21:03:51 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage an IIS virtual directory.
Puppet::Resource::ResourceType3.new(
  'iis_virtual_directory',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The site name under which the virtual directory is created
    Puppet::Resource::Param(Any, 'sitename'),

    # The application under which the virtual directory is created
    Puppet::Resource::Param(Any, 'application'),

    # The physical path to the virtual directory
    Puppet::Resource::Param(Any, 'physicalpath'),

    # Specifies the identity that should be impersonated when accessing the physical path.
    Puppet::Resource::Param(Any, 'user_name'),

    # Specifies the password associated with the user_name property.
    Puppet::Resource::Param(Any, 'password')
  ],
  [
    # The name of the virtual directory to manage
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `iis_virtual_directory`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # webadministration
    # : IIS Virtual Directory provider using the PowerShell WebAdministration module
    # 
    #   * Required binaries: `powershell.exe`.
    #   * Default for `operatingsystem` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
