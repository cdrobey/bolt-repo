# This file was automatically generated on 2020-04-10 21:03:51 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Create a new IIS website.
Puppet::Resource::ResourceType3.new(
  'iis_site',
  [
    # Specifies whether a site should be present or absent. If present is
    # specified, the site will be created but left in the default stopped state.
    # If started is specified, then the site will be created as well as started.
    # If stopped is specified, then the site will be created and kept stopped.
    # 
    # Valid values are `stopped` (also called `false`), `started` (also called `true`), `present`, `absent`.
    Puppet::Resource::Param(Variant[Boolean, Enum['stopped', 'false', 'started', 'true', 'present', 'absent']], 'ensure'),

    # The physical path to the IIS web site folder
    Puppet::Resource::Param(Any, 'physicalpath'),

    # The name of an ApplicationPool for this IIS Web Site
    Puppet::Resource::Param(Any, 'applicationpool'),

    # The protocols enabled for this site. If https is specified, http is implied.
    # If no value is provided, then this setting is disabled
    Puppet::Resource::Param(Any, 'enabledprotocols'),

    # The protocol, address, port, and ssl certificate bindings for a web site.
    # 
    # The bindinginformation value should be in the form of the IPv4/IPv6 address or wildcard *, then the port, then the optional hostname separated by colons:  `(ip|\*):[1-65535]:(hostname)?`
    # 
    # A protocol value of "http" indicates a binding that uses the HTTP protocol. A value of "https" indicates a binding that uses HTTP over SSL.
    # 
    # The sslflags parameter accepts integer values from 0 to 3 inclusive.
    # - A value of "0" specifies that the secure connection be made using an IP/Port
    #   combination. Only one certificate can be bound to a combination of IP address
    #   and the port.
    # - A value of "1" specifies that the secure connection be made using the port
    #   number and the host name obtained by using Server Name Indication (SNI).
    # - A value of "2" specifies that the secure connection be made using the
    #   centralized SSL certificate store without requiring a Server Name Indicator.
    # - A value of "3" specifies that the secure connection be made using the
    #   centralized SSL certificate store while requiring Server Name Indicator
    Puppet::Resource::Param(Any, 'bindings'),

    # Enables autostart on the specified website
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'serviceautostart'),

    # Specifies the provider used for service auto start. Used with :serviceautostartprovidertype.
    # The <serviceAutoStartProviders> element specifies a collection of managed assemblies that
    # Windows Process Activation Service (WAS) will load automatically when the startMode attribute of an
    # application pool is set to AlwaysRunning. This collection allows developers to specify assemblies that perform
    # initialization tasks before any HTTP requests are serviced.
    # 
    # example:
    # serviceautostartprovidername => "MyAutostartProvider"
    # serviceautostartprovidertype => "MyAutostartProvider, MyAutostartProvider, version=1.0.0.0, Culture=neutral, PublicKeyToken=426f62526f636b73"
    Puppet::Resource::Param(Any, 'serviceautostartprovidername'),

    # Specifies the application type for the provider used for service auto start. Used with :serviceautostartprovider
    # example:
    # serviceautostartprovidername => "MyAutostartProvider"
    # serviceautostartprovidertype => "MyAutostartProvider, MyAutostartProvider, version=1.0.0.0, Culture=neutral, PublicKeyToken=426f62526f636b73"
    Puppet::Resource::Param(Any, 'serviceautostartprovidertype'),

    # Enables loading website automatically without a client request first
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'preloadenabled'),

    Puppet::Resource::Param(Any, 'defaultpage'),

    # Specifies the format for the log file. When set to WSC,
    # it can be used in conjunction with :logflags
    Puppet::Resource::Param(Any, 'logformat'),

    # Specifies the physical path to place the log file
    Puppet::Resource::Param(Any, 'logpath'),

    # Specifies how often the log file should rollover
    Puppet::Resource::Param(Any, 'logperiod'),

    # Specifies how large the log file should be before truncating it.
    # The value must be in bytes. The value can be any size
    # between '1048576 (1MB)' and '4294967295 (4GB)'.
    Puppet::Resource::Param(Any, 'logtruncatesize'),

    # Use the system's local time to determine for the log file name as
    # as well as when the log file is rolled over
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'loglocaltimerollover'),

    # Specifies what W3C fields are logged in the IIS log file. This is only
    # valid when :logformat is set to W3C.
    Puppet::Resource::Param(Any, 'logflags')
  ],
  [
    # The Name of the IIS site. Used for uniqueness. Will set
    # the target to this value if target is unset.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `iis_site`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # iisadministration
    # : IIS Provider using the PowerShell IISAdministration module
    # 
    #   * Required binaries: `powershell.exe`.
    #   * Default for `operatingsystem` == `windows`.
    # 
    # webadministration
    # : IIS Provider using the PowerShell WebAdministration module
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
