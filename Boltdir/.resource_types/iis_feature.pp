# This file was automatically generated on 2020-04-10 21:03:51 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage an IIS installed features.
Puppet::Resource::ResourceType3.new(
  'iis_feature',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The unique name of the feature to manage.
    Puppet::Resource::Param(Any, 'name', true),

    # Indicates whether to install all sub features of a parent IIS feature. For instance, ASP.NET as well as the IIS Web Server
    Puppet::Resource::Param(Any, 'include_all_subfeatures'),

    # Indicates whether to allow a restart if the IIS feature installationrequests one
    Puppet::Resource::Param(Any, 'restart'),

    # Indicates whether to automatically install all managment tools for a given IIS feature
    Puppet::Resource::Param(Any, 'include_management_tools'),

    # Optionally include a source path for the installation media for an IIS feature
    Puppet::Resource::Param(Any, 'source'),

    # The specific backend to use for this `iis_feature`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # default
    # : IIS feature provider
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
