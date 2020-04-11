# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVhdFile resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVhdFileDirectory/MSFT_xVhdFileDirectory.schema.mof'
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
  'dsc_xvhdfile',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # VhdPath - Path to the VHD
    Puppet::Resource::Param(Any, 'dsc_vhdpath'),

    # FileDirectory - The FileDirectory objects to copy to the VHD
    Puppet::Resource::Param(Any, 'dsc_filedirectory'),

    # CheckSum - Valid values are ModifiedDate, SHA-1, SHA-256, SHA-512.
    Puppet::Resource::Param(Any, 'dsc_checksum'),

    # The specific backend to use for this `dsc_xvhdfile`
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
