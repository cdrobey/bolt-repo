# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPCacheAccounts resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPCacheAccounts/MSFT_SPCacheAccounts.schema.mof'
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
  'dsc_spcacheaccounts',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebAppUrl - The URL of the web application to set the accounts for
    Puppet::Resource::Param(Any, 'dsc_webappurl'),

    # SuperUserAlias - The account name for the super user
    Puppet::Resource::Param(Any, 'dsc_superuseralias'),

    # SuperReaderAlias - The account name for the super reader
    Puppet::Resource::Param(Any, 'dsc_superreaderalias'),

    # SetWebAppPolicy - Should the web app policy be set for these accounts?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_setwebapppolicy'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spcacheaccounts`
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
