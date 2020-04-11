# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC OfficeOnlineServerMachine resource type.
# Automatically generated from
# 'OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerMachine/MSFT_OfficeOnlineServerMachine.schema.mof'
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
  'dsc_officeonlineservermachine',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - Ensure Present or Absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Roles - Specifies one or more server roles, separated by commas, to assign to the new server. If no roles are specified, then the server is assigned all roles.
    Puppet::Resource::Param(Any, 'dsc_roles'),

    # MachineToJoin - Specifies the name of any server that is already a member of the Office Web Apps Server farm.
    Puppet::Resource::Param(Any, 'dsc_machinetojoin'),

    # The specific backend to use for this `dsc_officeonlineservermachine`
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
