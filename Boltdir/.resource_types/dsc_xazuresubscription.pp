# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureSubscription resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureSubscription/MSFT_xAzureSubscription.schema.mof'
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
  'dsc_xazuresubscription',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Specifies whether the subscription should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AzureSubscriptionName - Specifies the name of the Azure subscription that should be set to Current.
    Puppet::Resource::Param(Any, 'dsc_azuresubscriptionname'),

    # AzurePublishSettingsFile - Specifies the location of the Publish Settings file for the Azure Subscription.
    Puppet::Resource::Param(Any, 'dsc_azurepublishsettingsfile'),

    # The specific backend to use for this `dsc_xazuresubscription`
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
