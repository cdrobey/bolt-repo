# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSystemRestorePoint resource type.
# Automatically generated from
# 'xWindowsRestore/DSCResources/xSystemRestorePoint/xSystemRestorePoint.schema.mof'
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
  'dsc_xsystemrestorepoint',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Description - Specifies a descriptive name for the restore point.
    Puppet::Resource::Param(Any, 'dsc_description'),

    # RestorePointType - Specifies the type of restore point. The default is APPLICATION_INSTALL. Valid values are APPLICATION_INSTALL, APPLICATION_UNINSTALL, DEVICE_DRIVER_INSTALL, MODIFY_SETTINGS, CANCELLED_OPERATION.
    Puppet::Resource::Param(Any, 'dsc_restorepointtype'),

    # Ensure - Indicates if the specified restore point created. Set this property to 'Absent' to ensure that the restore point does not exist. Set it to 'Present' to ensure that the restore point does exist. The default is 'Present'. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xsystemrestorepoint`
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
