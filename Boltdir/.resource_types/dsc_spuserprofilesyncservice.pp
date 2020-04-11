# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPUserProfileSyncService resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPUserProfileSyncService/MSFT_SPUserProfileSyncService.schema.mof'
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
  'dsc_spuserprofilesyncservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # UserProfileServiceAppName - The name of the user profile service for this sync instance
    Puppet::Resource::Param(Any, 'dsc_userprofileserviceappname'),

    # Ensure - Present to ensure the service is running, absent to ensure it is not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # FarmAccount - The farm account, which is needed to provision the service app
    Puppet::Resource::Param(Any, 'dsc_farmaccount'),

    # RunOnlyWhenWriteable - Should the sync service only run when the user profile database is in a writeable state?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_runonlywhenwriteable'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spuserprofilesyncservice`
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
