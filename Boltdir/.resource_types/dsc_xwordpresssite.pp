# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWordPressSite resource type.
# Automatically generated from
# 'xWordPress/DscResources/MSFT_xWordPressSite/MSFT_xWordPressSite.schema.mof'
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
  'dsc_xwordpresssite',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Uri - The WordPress Site URI.
    Puppet::Resource::Param(Any, 'dsc_uri'),

    # Title - The WordPress Site Default page title.
    Puppet::Resource::Param(Any, 'dsc_title'),

    # AdministratorCredential - The username and password of the WordPress administrator to create when creating the site.
    Puppet::Resource::Param(Any, 'dsc_administratorcredential'),

    # AdministratorEmail - The email address of the WordPress administrator to create.
    Puppet::Resource::Param(Any, 'dsc_administratoremail'),

    # Ensure - Should the module be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xwordpresssite`
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
