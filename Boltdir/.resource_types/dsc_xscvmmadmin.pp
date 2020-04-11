# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCVMMAdmin resource type.
# Automatically generated from
# 'xSCVMM/DSCResources/MSFT_xSCVMMAdmin/MSFT_xSCVMMAdmin.schema.mof'
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
  'dsc_xscvmmadmin',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the principal is an Virtual Machine Manager admin.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Principal - The Virtual Machine Manager admin principal.
    Puppet::Resource::Param(Any, 'dsc_principal'),

    # UserRole - The Virtual Machine Manager user role.
    Puppet::Resource::Param(Any, 'dsc_userrole'),

    # SCVMMAdminCredential - Credential to be used to perform the operations.
    Puppet::Resource::Param(Any, 'dsc_scvmmadmincredential'),

    # The specific backend to use for this `dsc_xscvmmadmin`
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
