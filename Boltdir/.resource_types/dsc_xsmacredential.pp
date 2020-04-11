# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSmaCredential resource type.
# Automatically generated from
# 'xSCSMA/DSCResources/MSFT_xSmaCredential/MSFT_xSmaCredential.schema.mof'
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
  'dsc_xsmacredential',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of credential.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # credential - Credential object to be imported.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Description - Description of credential.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # WebServiceEndpoint - Web service endpoint of SMA instance.
    Puppet::Resource::Param(Any, 'dsc_webserviceendpoint'),

    # Port - Port to reach the web service endpoint.
    Puppet::Resource::Param(Any, 'dsc_port'),

    # UserName - User name of credential found within SMA
    Puppet::Resource::Param(Any, 'dsc_username'),

    # The specific backend to use for this `dsc_xsmacredential`
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
