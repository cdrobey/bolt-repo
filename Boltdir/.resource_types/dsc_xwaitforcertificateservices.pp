# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWaitForCertificateServices resource type.
# Automatically generated from
# 'xCertificate/DSCResources/MSFT_xWaitForCertificateServices/MSFT_xWaitForCertificateServices.schema.mof'
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
  'dsc_xwaitforcertificateservices',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # CAServerFQDN - The FQDN of the Active Directory Certificate Service Certificate Authority to wait for.
    Puppet::Resource::Param(Any, 'dsc_caserverfqdn'),

    # CARootName - The name of the Active Directory Certificate Service Certificate Authority to wait for.
    Puppet::Resource::Param(Any, 'dsc_carootname'),

    # RetryIntervalSeconds - Specifies the number of seconds to wait for the Active Directory Certificate Service Certificate Authority to become available. Defaults to 10 seconds.
    Puppet::Resource::Param(Any, 'dsc_retryintervalseconds'),

    # RetryCount - The number of times to loop the retry interval while waiting for the Active Directory Certificate Service Certificate Authority. Defaults to 60 retries.
    Puppet::Resource::Param(Any, 'dsc_retrycount'),

    # The specific backend to use for this `dsc_xwaitforcertificateservices`
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
