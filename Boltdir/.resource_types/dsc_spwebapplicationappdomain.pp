# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebApplicationAppDomain resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebApplicationAppDomain/MSFT_SPWebApplicationAppDomain.schema.mof'
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
  'dsc_spwebapplicationappdomain',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebApplication - The URL of the web application to set the app domain for
    Puppet::Resource::Param(Any, 'dsc_webapplication'),

    # Zone - The zone that this app domain applies to Valid values are Default, Internet, Intranet, Extranet, Custom.
    Puppet::Resource::Param(Any, 'dsc_zone'),

    # AppDomain - The domain for apps in this web app zone
    Puppet::Resource::Param(Any, 'dsc_appdomain'),

    # Port - The port to run apps on
    Puppet::Resource::Param(Any, 'dsc_port'),

    # SSL - Should apps run under SSL
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ssl'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebapplicationappdomain`
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
