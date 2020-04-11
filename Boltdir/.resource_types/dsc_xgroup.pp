# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xGroup resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xGroupResource/MSFT_xGroupResource.schema.mof'
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
  'dsc_xgroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GroupName - The name of the group to create, modify, or remove.
    Puppet::Resource::Param(Any, 'dsc_groupname'),

    # Ensure - Indicates if the group should exist or not. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - The description the group should have.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Members - The members the group should have.
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude - The members the group should include.
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude - The members the group should exclude.
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # Credential - A credential to resolve non-local group members.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # The specific backend to use for this `dsc_xgroup`
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
