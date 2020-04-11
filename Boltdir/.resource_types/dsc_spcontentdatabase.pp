# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPContentDatabase resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPContentDatabase/MSFT_SPContentDatabase.schema.mof'
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
  'dsc_spcontentdatabase',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies the name of the content database
    Puppet::Resource::Param(Any, 'dsc_name'),

    # DatabaseServer - The name of the database server to host the content DB
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # WebAppUrl - The URL of the web application
    Puppet::Resource::Param(Any, 'dsc_webappurl'),

    # Enabled - Should the database be enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # WarningSiteCount - Specify the site collection warning limit for the content database
    Puppet::Resource::Param(Any, 'dsc_warningsitecount'),

    # MaximumSiteCount - Specify the site collection maximum limit for the content database
    Puppet::Resource::Param(Any, 'dsc_maximumsitecount'),

    # Ensure - Present to create this database, absent to ensure it does not exist Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spcontentdatabase`
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
