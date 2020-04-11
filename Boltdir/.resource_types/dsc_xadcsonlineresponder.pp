# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAdcsOnlineResponder resource type.
# Automatically generated from
# 'xAdcsDeployment/DSCResources/MSFT_xAdcsOnlineResponder/MSFT_xAdcsOnlineResponder.schema.mof'
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
  'dsc_xadcsonlineresponder',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes' Valid values are Yes.
    Puppet::Resource::Param(Any, 'dsc_issingleinstance'),

    # Credential - If the Online Responder service is configured to use Standalone certification authority, then an account that is a member of the local Administrators on the CA is required. If the Online Responder service is configured to use an Enterprise CA, then an account that is a member of Domain Admins is required.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Ensure - Specifies whether the Online Responder feature should be installed or uninstalled. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xadcsonlineresponder`
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
