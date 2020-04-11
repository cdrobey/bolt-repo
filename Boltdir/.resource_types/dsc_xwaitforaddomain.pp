# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWaitForADDomain resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xWaitForADDomain/MSFT_xWaitForADDomain.schema.mof'
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
  'dsc_xwaitforaddomain',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DomainName
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # DomainUserCredential
    Puppet::Resource::Param(Any, 'dsc_domainusercredential'),

    # RetryIntervalSec
    Puppet::Resource::Param(Any, 'dsc_retryintervalsec'),

    # RetryCount
    Puppet::Resource::Param(Any, 'dsc_retrycount'),

    # RebootRetryCount
    Puppet::Resource::Param(Any, 'dsc_rebootretrycount'),

    # The specific backend to use for this `dsc_xwaitforaddomain`
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
