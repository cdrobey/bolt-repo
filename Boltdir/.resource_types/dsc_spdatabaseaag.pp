# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPDatabaseAAG resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPDatabaseAAG/MSFT_SPDatabaseAAG.schema.mof'
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
  'dsc_spdatabaseaag',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DatabaseName - The name of the database to put in the AlwaysOn group
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # AGName - Name of the AlwaysOn group on the SQL server - this must already exist
    Puppet::Resource::Param(Any, 'dsc_agname'),

    # FileShare - The fileshare to use for the SQL backup when adding to the group
    Puppet::Resource::Param(Any, 'dsc_fileshare'),

    # Ensure - Present if the database should be in this AlwaysOn group, or Absent if it should not be in the group Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spdatabaseaag`
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
