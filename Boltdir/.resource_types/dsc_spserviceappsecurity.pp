# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPServiceAppSecurity resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPServiceAppSecurity/MSFT_SPServiceAppSecurity.schema.mof'
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
  'dsc_spserviceappsecurity',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServiceAppName - The name of the service application you wish to apply security settings to
    Puppet::Resource::Param(Any, 'dsc_serviceappname'),

    # SecurityType - Administrators will set the administrators for the service app, SharingPermissions will set those granted access through the permissions button seen in the Sharing section of the ribbon in central admin Valid values are Administrators, SharingPermissions.
    Puppet::Resource::Param(Any, 'dsc_securitytype'),

    # Members - A list of members to set the group to. Those not in this list will be removed
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude - A list of members to add. Members not in this list will be left in the group
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude - A list of members to remove. Members not in this list will be left in the group
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spserviceappsecurity`
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
