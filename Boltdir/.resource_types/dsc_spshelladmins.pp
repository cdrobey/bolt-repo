# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPShellAdmins resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPShellAdmins/MSFT_SPShellAdmins.schema.mof'
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
  'dsc_spshelladmins',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name for the config, used for administration purposes
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Members - Exact list of accounts that will have to get Shell Admin permissions
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude - List of all accounts that must be in the Shell Admins group
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude - List of all accounts that are not allowed to have Shell Admin permissions
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # ContentDatabases - Shell Admin configuration of Content Databases
    Puppet::Resource::Param(Any, 'dsc_contentdatabases'),

    # AllContentDatabases - Specify if all content databases must get the same config as the general config
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allcontentdatabases'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spshelladmins`
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
