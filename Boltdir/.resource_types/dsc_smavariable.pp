# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SmaVariable resource type.
# Automatically generated from
# 'xSCSMA/DSCResources/MSFT_xSmaVariable/MSFT_xSmaVariable.schema.mof'
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
  'dsc_smavariable',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Desired state of SMA variable Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name - Name of SMA variable.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # value - Value of SMA variable.
    Puppet::Resource::Param(Any, 'dsc_value'),

    # Description - Description of SMA variable.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Set - Set is true if existing SMA variable matches configuration.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_set'),

    # WebServiceEndpoint - Web service endpoint of SMA instance.
    Puppet::Resource::Param(Any, 'dsc_webserviceendpoint'),

    # Port - Port to reach the web service endpoint. Defaults to the SMA default of 9090.
    Puppet::Resource::Param(Any, 'dsc_port'),

    # The specific backend to use for this `dsc_smavariable`
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
