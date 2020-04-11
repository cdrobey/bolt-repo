# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLAOGroupJoin resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLAOGroupJoin/MSFT_xSQLAOGroupJoin.schema.mof'
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
  'dsc_xsqlaogroupjoin',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - If the replica should be joined ('Present') to the Availability Group or not joined ('Absent') to the Availability Group. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # AvailabilityGroupName - The name Availability Group to join.
    Puppet::Resource::Param(Any, 'dsc_availabilitygroupname'),

    # SQLServer - Name of the SQL server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # SetupCredential - Credential to be used to Grant Permissions in SQL.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # The specific backend to use for this `dsc_xsqlaogroupjoin`
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
