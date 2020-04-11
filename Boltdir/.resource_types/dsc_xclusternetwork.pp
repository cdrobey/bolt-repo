# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xClusterNetwork resource type.
# Automatically generated from
# 'xFailOverCluster/DSCResources/MSFT_xClusterNetwork/MSFT_xClusterNetwork.schema.mof'
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
  'dsc_xclusternetwork',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Address - The address for the cluster network in the format '10.0.0.0'.
    Puppet::Resource::Param(Any, 'dsc_address'),

    # AddressMask - The address mask for the cluster network in the format '255.255.255.0'.
    Puppet::Resource::Param(Any, 'dsc_addressmask'),

    # Name - The name of the cluster network. If the cluster network name is not in desired state it will be renamed to match this name.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Role - he role of the cluster network. If the cluster network role is not in desired state it will change to match this role. Valid values are 0, 1, 3.
    Puppet::Resource::Param(Any, 'dsc_role'),

    # Metric - The metric number for the cluster network. If the cluster network metric number is not in desired state it will be changed to match this metric number.
    Puppet::Resource::Param(Any, 'dsc_metric'),

    # The specific backend to use for this `dsc_xclusternetwork`
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
