# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPUserProfileSyncConnection resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPUserProfileSyncConnection/MSFT_SPUserProfileSyncConnection.schema.mof'
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
  'dsc_spuserprofilesyncconnection',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the connection
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Forest - The name of the AD forest to read from
    Puppet::Resource::Param(Any, 'dsc_forest'),

    # UserProfileService - The name of the user profile service that this connection is attached to
    Puppet::Resource::Param(Any, 'dsc_userprofileservice'),

    # ConnectionCredentials - The credentials to connect to Active Directory with
    Puppet::Resource::Param(Any, 'dsc_connectioncredentials'),

    # IncludedOUs - A list of the OUs to import users from
    Puppet::Resource::Param(Any, 'dsc_includedous'),

    # ExcludedOUs - A list of the OUs to ignore users from
    Puppet::Resource::Param(Any, 'dsc_excludedous'),

    # Server - The specific AD server to connect to
    Puppet::Resource::Param(Any, 'dsc_server'),

    # UseSSL - Should SSL be used for the connection
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usessl'),

    # Force - Set to true to run the set method on every call to this resource
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # ConnectionType - The type of the connection - currently only Active Directory is supported Valid values are ActiveDirectory, BusinessDataCatalog.
    Puppet::Resource::Param(Any, 'dsc_connectiontype'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spuserprofilesyncconnection`
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
