# This file was automatically generated on 2020-04-10 21:03:38 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xIisFeatureDelegation resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xIisFeatureDelegation/MSFT_xIisFeatureDelegation.schema.mof'
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
  'dsc_xiisfeaturedelegation',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # SectionName
    Puppet::Resource::Param(Any, 'dsc_sectionname'),

    # OverrideMode - Valid values are Allow, Deny.
    Puppet::Resource::Param(Any, 'dsc_overridemode'),

    # The specific backend to use for this `dsc_xiisfeaturedelegation`
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
