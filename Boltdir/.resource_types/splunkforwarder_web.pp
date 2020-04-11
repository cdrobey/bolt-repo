# This file was automatically generated on 2020-04-10 21:03:56 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage splunkforwarder web settings in web.conf
Puppet::Resource::ResourceType3.new(
  'splunkforwarder_web',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The value of the setting to be defined.
    Puppet::Resource::Param(Any, 'value')
  ],
  [
    # The setting being defined.
    Puppet::Resource::Param(Any, 'setting', true),

    # The section the setting is defined under.
    Puppet::Resource::Param(Any, 'section', true),

    # The context in which to define the setting.
    Puppet::Resource::Param(Any, 'context', true),

    Puppet::Resource::Param(Any, 'name'),

    # The specific backend to use for this `splunkforwarder_web`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ini_setting
    # :
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /^([^\/]*)$/ => ['section'],
    /^(.*\/\/.*)\/(.*)$/ => ['section', 'setting'],
    /^(.*\/\/.*)$/ => ['section'],
    /^(.*)\/(.*)$/ => ['section', 'setting']
  },
  true,
  false)
