# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureAffinityGroup resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureAffinityGroup/MSFT_xAzureAffinityGroup.schema.mof'
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
  'dsc_xazureaffinitygroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies a name for the new affinity group that is unique to the subscription.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Specifies whether the Azure Affinity Group should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Location - Specifies the geographical location of the data center where the affinity group will be created.  This must match a value from the Name property of objects returned by Get-AzureLocation.
    Puppet::Resource::Param(Any, 'dsc_location'),

    # Description - Specifies a description for the affinity group. The description may be up to 1024 characters in length.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Label - Specifies a label for the affinity group. The label may be up to 100 characters in length.
    Puppet::Resource::Param(Any, 'dsc_label'),

    # The specific backend to use for this `dsc_xazureaffinitygroup`
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
