# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSite resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSite/MSFT_SPSite.schema.mof'
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
  'dsc_spsite',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the site collection
    Puppet::Resource::Param(Any, 'dsc_url'),

    # OwnerAlias - The username of the site collection administrator
    Puppet::Resource::Param(Any, 'dsc_owneralias'),

    # CompatibilityLevel - The compatibility level of the site
    Puppet::Resource::Param(Any, 'dsc_compatibilitylevel'),

    # ContentDatabase - The name of the content database to create the site in
    Puppet::Resource::Param(Any, 'dsc_contentdatabase'),

    # Description - The description to apply to the site collection
    Puppet::Resource::Param(Any, 'dsc_description'),

    # HostHeaderWebApplication - The URL of the host header web application to create this site in
    Puppet::Resource::Param(Any, 'dsc_hostheaderwebapplication'),

    # Language - The language code of the site
    Puppet::Resource::Param(Any, 'dsc_language'),

    # Name - The display name of the site collection
    Puppet::Resource::Param(Any, 'dsc_name'),

    # OwnerEmail - The email address of the site collection administrator
    Puppet::Resource::Param(Any, 'dsc_owneremail'),

    # QuotaTemplate - The quota template to apply to the site collection
    Puppet::Resource::Param(Any, 'dsc_quotatemplate'),

    # SecondaryEmail - The secondary site collection admin email address
    Puppet::Resource::Param(Any, 'dsc_secondaryemail'),

    # SecondaryOwnerAlias - The secondary site collection admin username
    Puppet::Resource::Param(Any, 'dsc_secondaryowneralias'),

    # Template - The template to apply to the site collection
    Puppet::Resource::Param(Any, 'dsc_template'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsite`
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
