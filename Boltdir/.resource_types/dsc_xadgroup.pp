# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADGroup resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADGroup/MSFT_xADGroup.schema.mof'
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
  'dsc_xadgroup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GroupName - Name of the Active Directory group
    Puppet::Resource::Param(Any, 'dsc_groupname'),

    # GroupScope - Active Directory group scope Valid values are DomainLocal, Global, Universal.
    Puppet::Resource::Param(Any, 'dsc_groupscope'),

    # Category - Active Directory group category Valid values are Security, Distribution.
    Puppet::Resource::Param(Any, 'dsc_category'),

    # Path - Location of the group within Active Directory expressed as a Distinguished Name
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Ensure - Should this resource be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Description - Description of the Active Directory group
    Puppet::Resource::Param(Any, 'dsc_description'),

    # DisplayName - Display name of the Active Directory group
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Credential - Credentials used to enact the change upon
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # DomainController - Active Directory domain controller to enact the change upon
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # Members - Active Directory group membership should match membership exactly
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude - Active Directory group should include these members
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude - Active Directory group should NOT include these members
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # MembershipAttribute - Active Directory attribute used to perform membership operations Valid values are SamAccountName, DistinguishedName, ObjectGUID, SID.
    Puppet::Resource::Param(Any, 'dsc_membershipattribute'),

    # ManagedBy - Active Directory managed by attribute specified as a DistinguishedName
    Puppet::Resource::Param(Any, 'dsc_managedby'),

    # Notes - Active Directory group notes field
    Puppet::Resource::Param(Any, 'dsc_notes'),

    # The specific backend to use for this `dsc_xadgroup`
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
