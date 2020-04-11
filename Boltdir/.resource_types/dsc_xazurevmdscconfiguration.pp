# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureVMDscConfiguration resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureVMDscConfiguration/MSFT_xAzureVMDscConfiguration.schema.mof'
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
  'dsc_xazurevmdscconfiguration',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # StorageAccountName - Specifies name of the existing storage account.
    Puppet::Resource::Param(Any, 'dsc_storageaccountname'),

    # Ensure - Specifies whether the supplied Configuration is Present or Absent in Azure Storage Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ContainerName - Specifies the name of the Container in the Azure Storage Account.
    Puppet::Resource::Param(Any, 'dsc_containername'),

    # ConfigurationPath - Specifies location of the Dsc Configuration document
    Puppet::Resource::Param(Any, 'dsc_configurationpath'),

    # AzureSubscriptionName - Specifies the name of the Azure subscription that should be set to Current.
    Puppet::Resource::Param(Any, 'dsc_azuresubscriptionname'),

    # AzurePublishSettingsPath - Specifies the location of the Publish Settings file for the Azure Subscription.
    Puppet::Resource::Param(Any, 'dsc_azurepublishsettingspath'),

    # BlobUri - Absolute Uri of the Blob
    Puppet::Resource::Param(Any, 'dsc_bloburi'),

    # The specific backend to use for this `dsc_xazurevmdscconfiguration`
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
