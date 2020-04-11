# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xPendingReboot resource type.
# Automatically generated from
# 'xPendingReboot/DSCResources/MSFT_xPendingReboot/MSFT_xPendingReboot.schema.mof'
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
  'dsc_xpendingreboot',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of this pending reboot check
    Puppet::Resource::Param(Any, 'dsc_name'),

    # SkipComponentBasedServicing - Specifies whether to skip reboots triggered by the Component-Based Servicing component
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skipcomponentbasedservicing'),

    # ComponentBasedServicing - A value indicating whether the Component-Based Servicing component requested a reboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_componentbasedservicing'),

    # SkipWindowsUpdate - Specifies whether to skip reboots triggered by Windows Update
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skipwindowsupdate'),

    # WindowsUpdate - A value indicating whether Windows Update requested a reboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windowsupdate'),

    # SkipPendingFileRename - Specifies whether to skip pending file rename reboots
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skippendingfilerename'),

    # PendingFileRename - A value indicating whether a pending file rename triggered a reboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pendingfilerename'),

    # SkipPendingComputerRename - Specifies whether to skip reboots triggered by a pending computer rename
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skippendingcomputerrename'),

    # PendingComputerRename - A value indicating whether a pending computer rename triggered a reboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pendingcomputerrename'),

    # SkipCcmClientSDK - Specifies whether to skip reboots triggered by the ConfigMgr client
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skipccmclientsdk'),

    # CcmClientSDK - A value indicating whether the ConfigMgr client triggered a reboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_ccmclientsdk'),

    # The specific backend to use for this `dsc_xpendingreboot`
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
