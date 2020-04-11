# This file was automatically generated on 2020-04-10 21:03:50 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# manages grafana plugins
# 
# @example Install a grafana plugin
#  grafana_plugin { 'grafana-simple-json-datasource': }
# 
# @example Install a grafana plugin from different repo
#  grafana_plugin { 'grafana-simple-json-datasource':
#    ensure => present,
#    repo   => 'https://nexus.company.com/grafana/plugins',
#  }
# 
# @example Uninstall a grafana plugin
#  grafana_plugin { 'grafana-simple-json-datasource':
#    ensure => absent,
#  }
# 
# @example Show resources
#  $ puppet resource grafana_plugin
Puppet::Resource::ResourceType3.new(
  'grafana_plugin',
  [
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # The name of the plugin to enable
    # 
    # Values can match `/^\S+$/`.
    Puppet::Resource::Param(Pattern[/^\S+$/], 'name', true),

    # The URL of an internal plugin server
    Puppet::Resource::Param(Any, 'repo'),

    # The specific backend to use for this `grafana_plugin`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # grafana_cli
    # : * Required binaries: `grafana-cli`.
    #   * Default for `feature` == `posix`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
