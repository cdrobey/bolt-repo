# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebAppPermissions resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebAppPermissions/MSFT_SPWebAppPermissions.schema.mof'
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
  'dsc_spwebapppermissions',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebAppUrl - The url of the web application
    Puppet::Resource::Param(Any, 'dsc_webappurl'),

    # ListPermissions - List permissions that need to be configured Valid values are Manage Lists, Override List Behaviors, Add Items, Edit Items, Delete Items, View Items, Approve Items, Open Items, View Versions, Delete Versions, Create Alerts, View Application Pages.
    Puppet::Resource::Param(Any, 'dsc_listpermissions'),

    # SitePermissions - Site permissions that need to be configured Valid values are Manage Permissions, View Web Analytics Data, Create Subsites, Manage Web Site, Add and Customize Pages, Apply Themes and Borders, Apply Style Sheets, Create Groups, Browse Directories, Use Self-Service Site Creation, View Pages, Enumerate Permissions, Browse User Information, Manage Alerts, Use Remote Interfaces, Use Client Integration Features, Open, Edit Personal User Information.
    Puppet::Resource::Param(Any, 'dsc_sitepermissions'),

    # PersonalPermissions - Personal permissions that need to be configured Valid values are Manage Personal Views, Add/Remove Personal Web Parts, Update Personal Web Parts.
    Puppet::Resource::Param(Any, 'dsc_personalpermissions'),

    # AllPermissions - Set all permissions
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allpermissions'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebapppermissions`
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
