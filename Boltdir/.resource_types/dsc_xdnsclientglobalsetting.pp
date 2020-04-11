# This file was automatically generated on 2020-04-10 21:03:34 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDnsClientGlobalSetting resource type.
# Automatically generated from
# 'xNetworking/DSCResources/MSFT_xDnsClientGlobalSetting/MSFT_xDnsClientGlobalSetting.schema.mof'
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
  'dsc_xdnsclientglobalsetting',
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

    # SuffixSearchList - Specifies a list of global suffixes that can be used in the specified order by the DNS client for resolving the IP address of the computer name.
    Puppet::Resource::Param(Any, 'dsc_suffixsearchlist'),

    # UseDevolution - Specifies that devolution is activated.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usedevolution'),

    # DevolutionLevel - Specifies the number of labels up to which devolution should occur.
    Puppet::Resource::Param(Any, 'dsc_devolutionlevel'),

    # The specific backend to use for this `dsc_xdnsclientglobalsetting`
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
