# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPDesignerSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPDesignerSettings/MSFT_SPDesignerSettings.schema.mof'
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
  'dsc_spdesignersettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the web application or site collection to configure
    Puppet::Resource::Param(Any, 'dsc_url'),

    # SettingsScope - Define the scope of the configuration - either WebApplication or SiteCollection Valid values are WebApplication, SiteCollection.
    Puppet::Resource::Param(Any, 'dsc_settingsscope'),

    # AllowSharePointDesigner - Allow the use of SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowsharepointdesigner'),

    # AllowDetachPagesFromDefinition - Allow pages to be un-ghosted by SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowdetachpagesfromdefinition'),

    # AllowCustomiseMasterPage - Allow masterpages to be changed by SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowcustomisemasterpage'),

    # AllowManageSiteURLStructure - Allow site URL structure to be changed by SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowmanagesiteurlstructure'),

    # AllowCreateDeclarativeWorkflow - Allow users to create declarative workflows with SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowcreatedeclarativeworkflow'),

    # AllowSavePublishDeclarativeWorkflow - Allow users to save and re-publish declarative workflows with SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowsavepublishdeclarativeworkflow'),

    # AllowSaveDeclarativeWorkflowAsTemplate - Allow users to save declarative workflows as a template from SharePoint Designer
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowsavedeclarativeworkflowastemplate'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spdesignersettings`
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
