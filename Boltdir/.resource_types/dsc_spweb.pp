# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWeb resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWeb/MSFT_SPWeb.schema.mof'
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
  'dsc_spweb',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the web
    Puppet::Resource::Param(Any, 'dsc_url'),

    # Ensure - Present if the web should exist or Absent if it should be removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - The description to apply to the web
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Name - The Name of the web
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Language - The Lanhuage (LCID) of the web
    Puppet::Resource::Param(Any, 'dsc_language'),

    # Template - The WebTemplate to use to create the web
    Puppet::Resource::Param(Any, 'dsc_template'),

    # UniquePermissions - True if the web should have unique permissions, otherwise false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_uniquepermissions'),

    # UseParentTopNav - True if the web should use the parent nav bar, otherwise false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_useparenttopnav'),

    # AddToQuickLaunch - True if the web should be in the quick launch of the parent web, otherwise false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_addtoquicklaunch'),

    # AddToTopNav - True if the web should be added to the top nav bar of the parent web, otherwise false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_addtotopnav'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spweb`
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
