# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xFirewallProfile resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xFirewallProfile/MSFT_xFirewallProfile.schema.mof'
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
  'dsc_xfirewallprofile',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the firewall profile to configure. Valid values are Domain, Public, Private.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # AllowInboundRules - Specifies that the firewall blocks inbound traffic. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowinboundrules'),

    # AllowLocalFirewallRules - Specifies that the local firewall rules should be merged into the effective policy along with Group Policy settings. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowlocalfirewallrules'),

    # AllowLocalIPsecRules - Specifies that the local IPsec rules should be merged into the effective policy along with Group Policy settings. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowlocalipsecrules'),

    # AllowUnicastResponseToMulticast - Allows unicast responses to multi-cast traffic. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowunicastresponsetomulticast'),

    # AllowUserApps - Specifies that traffic from local user applications is allowed through the firewall. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowuserapps'),

    # AllowUserPorts - Specifies that traffic is allowed through local user ports. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_allowuserports'),

    # DefaultInboundAction - Specifies how to filter inbound traffic. Valid values are Block, Allow, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_defaultinboundaction'),

    # DefaultOutboundAction - Specifies how to filter outbound traffic. Valid values are Block, Allow, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_defaultoutboundaction'),

    # DisabledInterfaceAliases - Specifies a list of interfaces on which firewall settings are excluded.
    Puppet::Resource::Param(Any, 'dsc_disabledinterfacealiases'),

    # Enabled - Specifies that devolution is activated. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_enabled'),

    # EnableStealthModeForIPsec - Enables stealth mode for IPsec traffic. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_enablestealthmodeforipsec'),

    # LogAllowed - Specifies how to log the allowed packets in the location specified by the LogFileName parameter. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_logallowed'),

    # LogBlocked - Specifies how to log the dropped packets in the location specified by the LogFileName parameter. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_logblocked'),

    # LogFileName - Specifies the path and filename of the file to which Windows Server writes log entries.
    Puppet::Resource::Param(Any, 'dsc_logfilename'),

    # LogIgnored - Specifies how to log the ignored packets in the location specified by the LogFileName parameter. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_logignored'),

    # LogMaxSizeKilobytes - Specifies the maximum file size of the log, in kilobytes. The acceptable values for this parameter are: 1 through 32767.
    Puppet::Resource::Param(Any, 'dsc_logmaxsizekilobytes'),

    # NotifyOnListen - Allows the notification of listening for inbound connections by a service. Valid values are True, False, NotConfigured.
    Puppet::Resource::Param(Any, 'dsc_notifyonlisten'),

    # The specific backend to use for this `dsc_xfirewallprofile`
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
