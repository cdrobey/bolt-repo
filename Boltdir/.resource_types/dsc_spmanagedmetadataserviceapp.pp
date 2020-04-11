# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPManagedMetaDataServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPManagedMetadataServiceApp/MSFT_SPManagedMetaDataServiceApp.schema.mof'
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
  'dsc_spmanagedmetadataserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the managed metadata service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The proxy name, if not specified will be /Name of service app/ Proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The application pool that the service app will use
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # DatabaseServer - The name of the database server which will host the application
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # DatabaseName - The name of the database for the service application
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # TermStoreAdministrators - A list of the users/groups who are administrators of the term store
    Puppet::Resource::Param(Any, 'dsc_termstoreadministrators'),

    # Ensure - Present ensures service app exists, absent ensures it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ContentTypeHubUrl - The URL of the content type hub for this app (only set when the app is provisioned)
    Puppet::Resource::Param(Any, 'dsc_contenttypehuburl'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spmanagedmetadataserviceapp`
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
