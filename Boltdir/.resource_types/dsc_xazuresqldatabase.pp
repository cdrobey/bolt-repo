# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureSqlDatabase resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureSqlDatabase/MSFT_xAzureSqlDatabase.schema.mof'
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
  'dsc_xazuresqldatabase',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the database
    Puppet::Resource::Param(Any, 'dsc_name'),

    # MaximumSizeInGB - Maximum size of the database in GB
    Puppet::Resource::Param(Any, 'dsc_maximumsizeingb'),

    # Collation - Collation of the database
    Puppet::Resource::Param(Any, 'dsc_collation'),

    # Edition - Edition of the database
    Puppet::Resource::Param(Any, 'dsc_edition'),

    # ServerCredential - Credential to the database server
    Puppet::Resource::Param(Any, 'dsc_servercredential'),

    # ServerName - Name of the database server
    Puppet::Resource::Param(Any, 'dsc_servername'),

    # AzureSubscriptionName - Specifies the name of the Azure subscription that should be set to Current
    Puppet::Resource::Param(Any, 'dsc_azuresubscriptionname'),

    # AzurePublishSettingsFile - Specifies the location of the Publish Settings file for the Azure Subscription
    Puppet::Resource::Param(Any, 'dsc_azurepublishsettingsfile'),

    # Ensure - Ensure that database is present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xazuresqldatabase`
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
