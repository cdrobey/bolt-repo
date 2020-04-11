# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureService resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureService/MSFT_xAzureService.schema.mof'
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
  'dsc_xazureservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServiceName - Specifies a name for the new cloud service that is unique to the subscription.
    Puppet::Resource::Param(Any, 'dsc_servicename'),

    # Ensure - Specifies whether the service should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - Specifies the Azure Affinity Group for the service.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # AffinityGroup - Specifies a description for the service.
    Puppet::Resource::Param(Any, 'dsc_affinitygroup'),

    # Label - Specifies a label for the service.
    Puppet::Resource::Param(Any, 'dsc_label'),

    # The specific backend to use for this `dsc_xazureservice`
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
