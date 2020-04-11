# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCSPFStamp resource type.
# Automatically generated from
# 'xSCSPF/DSCResources/MSFT_xSCSPFStamp/MSFT_xSCSPFStamp.schema.mof'
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
  'dsc_xscspfstamp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the SPF stamp exists.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Name - Specifies a name for the stamp.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Servers - Specifies the name of one or more server objects to associate with the new stamp.
    Puppet::Resource::Param(Any, 'dsc_servers'),

    # SCSPFAdminCredential - Credential with admin permissions to Service Provider Foundation.
    Puppet::Resource::Param(Any, 'dsc_scspfadmincredential'),

    # The specific backend to use for this `dsc_xscspfstamp`
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