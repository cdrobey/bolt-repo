# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xFirewall resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xFirewall/MSFT_xFirewall.schema.mof'
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
  'dsc_xfirewall',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the Firewall Rule
    Puppet::Resource::Param(Any, 'dsc_name'),

    # DisplayName - Localized, user-facing name of the Firewall Rule being created
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Group - Name of the Firewall Group where we want to put the Firewall Rule
    Puppet::Resource::Param(Any, 'dsc_group'),

    # Ensure - Ensure the presence/absence of the resource Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Enabled - Enable or disable the supplied configuration Valid values are True, False.
    Puppet::Resource::Param(Any, 'dsc_enabled'),

    # Action - Allow or Block the supplied configuration Valid values are NotConfigured, Allow, Block.
    Puppet::Resource::Param(Any, 'dsc_action'),

    # Profile - Specifies one or more profiles to which the rule is assigned
    Puppet::Resource::Param(Any, 'dsc_profile'),

    # Direction - Direction of the connection Valid values are Inbound, Outbound.
    Puppet::Resource::Param(Any, 'dsc_direction'),

    # RemotePort - Specific Port used for filter. Specified by port number, range, or keyword
    Puppet::Resource::Param(Any, 'dsc_remoteport'),

    # LocalPort - Local Port used for the filter
    Puppet::Resource::Param(Any, 'dsc_localport'),

    # Protocol - Specific Protocol for filter. Specified by name, number, or range
    Puppet::Resource::Param(Any, 'dsc_protocol'),

    # Description - Documentation for the Rule.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Program - Path and file name of the program for which the rule is applied
    Puppet::Resource::Param(Any, 'dsc_program'),

    # Service - Specifies the short name of a Windows service to which the firewall rule applies
    Puppet::Resource::Param(Any, 'dsc_service'),

    # Authentication - Specifies that authentication is required on firewall rules Valid values are NotRequired, Required, NoEncap.
    Puppet::Resource::Param(Any, 'dsc_authentication'),

    # Encryption - Specifies that encryption in authentication is required on firewall rules Valid values are NotRequired, Required, Dynamic.
    Puppet::Resource::Param(Any, 'dsc_encryption'),

    # InterfaceAlias - Specifies the alias of the interface that applies to the traffic
    Puppet::Resource::Param(Any, 'dsc_interfacealias'),

    # InterfaceType - Specifies that only network connections made through the indicated interface types are subject to the requirements of this rule Valid values are Any, Wired, Wireless, RemoteAccess.
    Puppet::Resource::Param(Any, 'dsc_interfacetype'),

    # LocalAddress - Specifies that network packets with matching IP addresses match this rule
    Puppet::Resource::Param(Any, 'dsc_localaddress'),

    # LocalUser - Specifies the principals to which network traffic this firewall rule applies
    Puppet::Resource::Param(Any, 'dsc_localuser'),

    # Package - Specifies the Windows Store application to which the firewall rule applies
    Puppet::Resource::Param(Any, 'dsc_package'),

    # Platform - Specifies which version of Windows the associated rule applies
    Puppet::Resource::Param(Any, 'dsc_platform'),

    # RemoteAddress - Specifies that network packets with matching IP addresses match this rule
    Puppet::Resource::Param(Any, 'dsc_remoteaddress'),

    # RemoteMachine - Specifies that matching IPsec rules of the indicated computer accounts are created
    Puppet::Resource::Param(Any, 'dsc_remotemachine'),

    # RemoteUser - Specifies that matching IPsec rules of the indicated user accounts are created
    Puppet::Resource::Param(Any, 'dsc_remoteuser'),

    # DynamicTransport - Specifies a dynamic transport Valid values are Any, ProximityApps, ProximitySharing, WifiDirectPrinting, WifiDirectDisplay, WifiDirectDevices.
    Puppet::Resource::Param(Any, 'dsc_dynamictransport'),

    # EdgeTraversalPolicy - Specifies that matching firewall rules of the indicated edge traversal policy are created Valid values are Block, Allow, DeferToUser, DeferToApp.
    Puppet::Resource::Param(Any, 'dsc_edgetraversalpolicy'),

    # IcmpType - Specifies the ICMP type codes
    Puppet::Resource::Param(Any, 'dsc_icmptype'),

    # LocalOnlyMapping - Indicates that matching firewall rules of the indicated value are created
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_localonlymapping'),

    # LooseSourceMapping - Indicates that matching firewall rules of the indicated value are created
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loosesourcemapping'),

    # OverrideBlockRules - Indicates that matching network traffic that would otherwise be blocked are allowed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_overrideblockrules'),

    # Owner - Specifies that matching firewall rules of the indicated owner are created
    Puppet::Resource::Param(Any, 'dsc_owner'),

    # DisplayGroup - The current value of the Display Group of the Firewall Rule
    Puppet::Resource::Param(Any, 'dsc_displaygroup'),

    # The specific backend to use for this `dsc_xfirewall`
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
