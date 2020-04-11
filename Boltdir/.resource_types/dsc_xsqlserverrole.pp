# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerRole resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerRole/MSFT_xSQLServerRole.schema.mof'
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
  'dsc_xsqlserverrole',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServerRoleName - The name of of SQL role to add or remove.
    Puppet::Resource::Param(Any, 'dsc_serverrolename'),

    # SQLServer - The host name of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - The name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # Ensure - An enumerated value that describes if the server role is added (Present) or dropped (Absent). Default value is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Members - The members the server role should have. This parameter will replace all the current server role members with the specified members.
    Puppet::Resource::Param(Any, 'dsc_members'),

    # MembersToInclude - The members the server role should include. This parameter will only add members to a server role. Can not be used at the same time as parameter Members.
    Puppet::Resource::Param(Any, 'dsc_memberstoinclude'),

    # MembersToExclude - The members the server role should exclude. This parameter will only remove members from a server role. Can only be used when parameter Ensure is set to 'Present'. Can not be used at the same time as parameter Members.
    Puppet::Resource::Param(Any, 'dsc_memberstoexclude'),

    # The specific backend to use for this `dsc_xsqlserverrole`
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
