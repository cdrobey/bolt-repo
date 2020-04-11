# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDFSNamespaceServerConfiguration resource type.
# Automatically generated from
# 'xDFS/DSCResources/MSFT_xDFSNamespaceServerConfiguration/MSFT_xDFSNamespaceServerConfiguration.schema.mof'
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
  'dsc_xdfsnamespaceserverconfiguration',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes'. Valid values are Yes.
    Puppet::Resource::Param(Any, 'dsc_issingleinstance'),

    # LdapTimeoutSec - Specifies a time-out value, in seconds, for Lightweight Directory Access Protocol (LDAP) requests for the DFS namespace server.
    Puppet::Resource::Param(Any, 'dsc_ldaptimeoutsec'),

    # SyncIntervalSec - This interval controls how often domain-based DFS namespace root servers and domain controllers connect to the PDC emulator to get updates of DFS namespace metadata.
    Puppet::Resource::Param(Any, 'dsc_syncintervalsec'),

    # UseFQDN - Indicates whether a DFS namespace server uses FQDNs in referrals.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usefqdn'),

    # The specific backend to use for this `dsc_xdfsnamespaceserverconfiguration`
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
