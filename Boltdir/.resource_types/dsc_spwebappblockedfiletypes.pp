# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebAppBlockedFileTypes resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebAppBlockedFileTypes/MSFT_SPWebAppBlockedFileTypes.schema.mof'
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
  'dsc_spwebappblockedfiletypes',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Url - The URL of the web application to set blocked file types for
    Puppet::Resource::Param(Any, 'dsc_url'),

    # Blocked - This is a fixed list to use for blocked file types in this web app
    Puppet::Resource::Param(Any, 'dsc_blocked'),

    # EnsureBlocked - This list of file types that will always be added to the list for this web app. Types not in this list will be left in the list
    Puppet::Resource::Param(Any, 'dsc_ensureblocked'),

    # EnsureAllowed - This list of file types that will always be removedfrom the list for this web app. Types not in this list will be left in the list
    Puppet::Resource::Param(Any, 'dsc_ensureallowed'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebappblockedfiletypes`
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
