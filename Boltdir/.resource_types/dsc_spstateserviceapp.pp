# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPStateServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPStateServiceApp/MSFT_SPStateServiceApp.schema.mof'
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
  'dsc_spstateserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the state service app
    Puppet::Resource::Param(Any, 'dsc_name'),

    # DatabaseCredentials - The database credentials for accessing the database
    Puppet::Resource::Param(Any, 'dsc_databasecredentials'),

    # DatabaseName - The name of the database for the service app
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The name of the database server
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # Ensure - Present if the service app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spstateserviceapp`
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
