# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchEventLogLevel resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchEventLogLevel/MSFT_xExchEventLogLevel.schema.mof'
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
  'dsc_xexcheventloglevel',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity - The Identity parameter specifies the name of the event logging category for which you want to set the event logging level.
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential - Credentials used to establish a remote Powershell session to Exchange
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Level - The Level parameter specifies the log level for the specific event logging category. Valid values are Lowest, Low, Medium, High, Expert.
    Puppet::Resource::Param(Any, 'dsc_level'),

    # The specific backend to use for this `dsc_xexcheventloglevel`
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
