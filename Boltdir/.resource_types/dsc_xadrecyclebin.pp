# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADRecycleBin resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADRecycleBin/MSFT_xADRecycleBin.schema.mof'
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
  'dsc_xadrecyclebin',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ForestFQDN
    Puppet::Resource::Param(Any, 'dsc_forestfqdn'),

    # EnterpriseAdministratorCredential
    Puppet::Resource::Param(Any, 'dsc_enterpriseadministratorcredential'),

    # RecycleBinEnabled
    Puppet::Resource::Param(Any, 'dsc_recyclebinenabled'),

    # ForestMode
    Puppet::Resource::Param(Any, 'dsc_forestmode'),

    # The specific backend to use for this `dsc_xadrecyclebin`
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