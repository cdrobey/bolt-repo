# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPFeature resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPFeature/MSFT_SPFeature.schema.mof'
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
  'dsc_spfeature',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the feature
    Puppet::Resource::Param(Any, 'dsc_name'),

    # FeatureScope - The scope to change the feature at - Farm, WebApplication, SiteCollection or Site Valid values are Farm, WebApplication, Site, Web.
    Puppet::Resource::Param(Any, 'dsc_featurescope'),

    # Url - The URL to change the feature at
    Puppet::Resource::Param(Any, 'dsc_url'),

    # Ensure - Present if the feature is to be enabled, Absent if it is to be disabled Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Version - The version of the feature to check against
    Puppet::Resource::Param(Any, 'dsc_version'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spfeature`
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