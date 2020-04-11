# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureStorageAccount resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureStorageAccount/MSFT_xAzureStorageAccount.schema.mof'
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
  'dsc_xazurestorageaccount',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # StorageAccountName - Specifies a name for the storage account. The storage account name must be unique to Windows Azure and must be between 3 and 24 characters in length and use lowercase letters and numbers only.
    Puppet::Resource::Param(Any, 'dsc_storageaccountname'),

    # Ensure - Specifies whether the Azure Storage Account should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AffinityGroup - Specifies the name of an existing affinity group in the current subscription. You can specify either a Location or an AffinityGroup parameter, but not both.
    Puppet::Resource::Param(Any, 'dsc_affinitygroup'),

    # Container - Specifies a name for the Container that should be created in the Azure Storage Account.
    Puppet::Resource::Param(Any, 'dsc_container'),

    # Folder - Specifies a local folder.  All files in the root of the folder will be uploaded to the new container.
    Puppet::Resource::Param(Any, 'dsc_folder'),

    # Label - Specifies a label for the storage account. The label may be up to 100 characters in length.
    Puppet::Resource::Param(Any, 'dsc_label'),

    # The specific backend to use for this `dsc_xazurestorageaccount`
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
