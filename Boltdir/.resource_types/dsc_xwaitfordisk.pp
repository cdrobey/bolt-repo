# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWaitForDisk resource type.
# Automatically generated from
# 'xStorage/DSCResources/MSFT_xWaitForDisk/MSFT_xWaitForDisk.schema.mof'
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
  'dsc_xwaitfordisk',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DiskId - Specifies the disk identifier for the disk to wait for.
    Puppet::Resource::Param(Any, 'dsc_diskid'),

    # DiskIdType - Specifies the identifier type the DiskId contains. Defaults to Number. Valid values are Number, UniqueId.
    Puppet::Resource::Param(Any, 'dsc_diskidtype'),

    # RetryIntervalSec - Specifies the number of seconds to wait for the disk to become available.
    Puppet::Resource::Param(Any, 'dsc_retryintervalsec'),

    # RetryCount - The number of times to loop the retry interval while waiting for the disk.
    Puppet::Resource::Param(Any, 'dsc_retrycount'),

    # The specific backend to use for this `dsc_xwaitfordisk`
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
