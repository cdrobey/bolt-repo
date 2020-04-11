# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPUserProfileServiceAppPermissions resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPUserProfileServiceAppPermissions/MSFT_SPUserProfileServiceAppPermissions.schema.mof'
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
  'dsc_spuserprofileserviceapppermissions',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ProxyName - The name of the proxy that is attached to the user profile service you wish to set permissions for
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # CreatePersonalSite - A list of user principals that will have the Create personal site permission
    Puppet::Resource::Param(Any, 'dsc_createpersonalsite'),

    # FollowAndEditProfile - A list of user principals that will have the Follow users and edit profile permission
    Puppet::Resource::Param(Any, 'dsc_followandeditprofile'),

    # UseTagsAndNotes - A list of user principals that will have the Use tags and notes permission
    Puppet::Resource::Param(Any, 'dsc_usetagsandnotes'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spuserprofileserviceapppermissions`
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
