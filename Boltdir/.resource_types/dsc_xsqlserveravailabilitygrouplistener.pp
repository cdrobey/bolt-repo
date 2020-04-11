# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerAvailabilityGroupListener resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerAvailabilityGroupListener/MSFT_xSQLServerAvailabilityGroupListener.schema.mof'
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
  'dsc_xsqlserveravailabilitygrouplistener',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # InstanceName - The SQL Server instance name of the primary replica.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # NodeName - The host name or FQDN of the primary replica.
    Puppet::Resource::Param(Any, 'dsc_nodename'),

    # Name - The name of the availability group listener, max 15 characters. This name will be used as the Virtual Computer Object (VCO).
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - If the availability group listener should be present or absent. Default value is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AvailabilityGroup - The name of the availability group to which the availability group listener is or will be connected.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroup'),

    # IpAddress - The IP address used for the availability group listener, in the format 192.168.10.45/255.255.252.0. If using DCHP, set to the first IP-address of the DHCP subnet, in the format 192.168.8.1/255.255.252.0. Must be valid in the cluster-allowed IP range.
    Puppet::Resource::Param(Any, 'dsc_ipaddress'),

    # Port - The port used for the availability group listener
    Puppet::Resource::Param(Any, 'dsc_port'),

    # DHCP - If DHCP should be used for the availability group listener instead of static IP address.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dhcp'),

    # The specific backend to use for this `dsc_xsqlserveravailabilitygrouplistener`
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
