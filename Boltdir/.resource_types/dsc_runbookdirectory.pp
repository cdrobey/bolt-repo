# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC RunbookDirectory resource type.
# Automatically generated from
# 'xSCSMA/DSCResources/MSFT_xRunbookDirectory/MSFT_xRunbookDirectory.schema.mof'
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
  'dsc_runbookdirectory',
  [
    # Valid values are `exists?`, `published`, `draft`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'published', 'draft', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - The import state of runbooks found at RunbookPath. This can be Published, Draft, or Absent Valid values are Published, Draft, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # RunbookPath - Path to Runbook(s) to be imported. Accepts wildcards.
    Puppet::Resource::Param(Any, 'dsc_runbookpath'),

    # Matches - Describes the validity of the imported Runbook(s).
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_matches'),

    # WebServiceEndpoint - URL of SMA's web service endpoint.
    Puppet::Resource::Param(Any, 'dsc_webserviceendpoint'),

    # Port - Port of the SMA web site. Defaults to the SMA default of 9090.
    Puppet::Resource::Param(Any, 'dsc_port'),

    # The specific backend to use for this `dsc_runbookdirectory`
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
