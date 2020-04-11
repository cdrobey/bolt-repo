# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchDatabaseAvailabilityGroupNetwork resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchDatabaseAvailabilityGroupNetwork/MSFT_xExchDatabaseAvailabilityGroupNetwork.schema.mof'
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
  'dsc_xexchdatabaseavailabilitygroupnetwork',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # DatabaseAvailabilityGroup
    Puppet::Resource::Param(Any, 'dsc_databaseavailabilitygroup'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # IgnoreNetwork
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ignorenetwork'),

    # ReplicationEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_replicationenabled'),

    # Subnets
    Puppet::Resource::Param(Any, 'dsc_subnets'),

    # The specific backend to use for this `dsc_xexchdatabaseavailabilitygroupnetwork`
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
