# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchResultSource resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchResultSource/MSFT_SPSearchResultSource.schema.mof'
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
  'dsc_spsearchresultsource',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the result source
    Puppet::Resource::Param(Any, 'dsc_name'),

    # SearchServiceAppName - The name of the search service application to associate this result source with
    Puppet::Resource::Param(Any, 'dsc_searchserviceappname'),

    # Query - The query to pass to the provider source
    Puppet::Resource::Param(Any, 'dsc_query'),

    # ProviderType - The provider type to use for the result source Valid values are Exchange Search Provider, Local People Provider, Local SharePoint Provider, OpenSearch Provider, Remote People Provider, Remote SharePoint Provider.
    Puppet::Resource::Param(Any, 'dsc_providertype'),

    # ConnectionUrl - The URI to connect to the remote location
    Puppet::Resource::Param(Any, 'dsc_connectionurl'),

    # Ensure - Present if the result source should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchresultsource`
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
