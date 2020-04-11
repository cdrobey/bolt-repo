# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADDomainTrust resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADDomainTrust/MSFT_xADDomainTrust.schema.mof'
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
  'dsc_xaddomaintrust',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Should this resource be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # TargetDomainAdministratorCredential - Credentials to authenticate to the target domain
    Puppet::Resource::Param(Any, 'dsc_targetdomainadministratorcredential'),

    # TargetDomainName - Name of the AD domain that is being trusted
    Puppet::Resource::Param(Any, 'dsc_targetdomainname'),

    # TrustType - Type of trust Valid values are External, Forest.
    Puppet::Resource::Param(Any, 'dsc_trusttype'),

    # TrustDirection - Direction of trust Valid values are Bidirectional, Inbound, Outbound.
    Puppet::Resource::Param(Any, 'dsc_trustdirection'),

    # SourceDomainName - Name of the AD domain that is requesting the trust
    Puppet::Resource::Param(Any, 'dsc_sourcedomainname'),

    # The specific backend to use for this `dsc_xaddomaintrust`
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
