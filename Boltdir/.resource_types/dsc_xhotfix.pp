# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xHotfix resource type.
# Automatically generated from
# 'xWindowsUpdate/DscResources/MSFT_xWindowsUpdate/MSFT_xWindowsUpdate.schema.mof'
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
  'dsc_xhotfix',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - Specifies the path that contains the msu file for the hotfix installation.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Id - Specifies the Hotfix ID.
    Puppet::Resource::Param(Any, 'dsc_id'),

    # Log - Specifies the location of the log that contains information from the installation.
    Puppet::Resource::Param(Any, 'dsc_log'),

    # Ensure - Specifies whether the hotfix needs to be installed or uninstalled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Credential - Specifies the credential to use to authenticate to a UNC share if the path is on a UNC share.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # The specific backend to use for this `dsc_xhotfix`
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
