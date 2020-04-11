# This file was automatically generated on 2020-04-10 21:03:25 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPBCSServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPBCSServiceApp/MSFT_SPBCSServiceApp.schema.mof'
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
  'dsc_spbcsserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the BCS service app
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ApplicationPool - The application pool it should run in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # DatabaseName - Name of the database to create for the service app
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - Name of the database server to host the database on
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # Ensure - Present ensures service app exists, absent ensures it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spbcsserviceapp`
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
