# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xNetAdapterRDMA resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xNetAdapterRDMA/MSFT_xNetAdapterRDMA.schema.mof'
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
  'dsc_xnetadapterrdma',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies the name of network adapter for which RDMA needs to be configured.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Enabled - Specifies whether RDMA is enabled or disabled.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # The specific backend to use for this `dsc_xnetadapterrdma`
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
