# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC Group resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_GroupResource/MSFT_GroupResource.schema.mof'
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
  'dsc_group',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GroupName
    Puppet::Resource::Param(Any, 'dsc_groupname'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Members
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # The specific backend to use for this `dsc_group`
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
