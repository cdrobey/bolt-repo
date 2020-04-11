# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xUser resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xUserResource/MSFT_xUserResource.schema.mof'
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
  'dsc_xuser',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # UserName - The name of the User to Create/Modify/Delete
    Puppet::Resource::Param(Any, 'dsc_username'),

    # Ensure - An enumerated value that describes if the user is expected to exist on the machine Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # FullName - The display name of the user
    Puppet::Resource::Param(Any, 'dsc_fullname'),

    # Description - A description for the user
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Password - The password for the user
    Puppet::Resource::Param(Any, 'dsc_password'),

    # Disabled - Value used to disable/enable a user account
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disabled'),

    # PasswordNeverExpires - Value used to set whether a user's password expires or not
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passwordneverexpires'),

    # PasswordChangeRequired - Value used to require a user to change their password
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passwordchangerequired'),

    # PasswordChangeNotAllowed - Value used to set whether a user can/cannot change their password
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passwordchangenotallowed'),

    # The specific backend to use for this `dsc_xuser`
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
