# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xBLBitlocker resource type.
# Automatically generated from
# 'xBitlocker/DSCResources/MSFT_xBLBitlocker/MSFT_xBLBitlocker.schema.mof'
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
  'dsc_xblbitlocker',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # MountPoint
    Puppet::Resource::Param(Any, 'dsc_mountpoint'),

    # PrimaryProtector - Valid values are PasswordProtector, RecoveryPasswordProtector, StartupKeyProtector, TpmProtector.
    Puppet::Resource::Param(Any, 'dsc_primaryprotector'),

    # AutoUnlock
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autounlock'),

    # AllowImmediateReboot
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowimmediatereboot'),

    # AdAccountOrGroup
    Puppet::Resource::Param(Any, 'dsc_adaccountorgroup'),

    # AdAccountOrGroupProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_adaccountorgroupprotector'),

    # EncryptionMethod - Valid values are Aes128, Aes256.
    Puppet::Resource::Param(Any, 'dsc_encryptionmethod'),

    # HardwareEncryption
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_hardwareencryption'),

    # Password
    Puppet::Resource::Param(Any, 'dsc_password'),

    # PasswordProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passwordprotector'),

    # Pin
    Puppet::Resource::Param(Any, 'dsc_pin'),

    # RecoveryKeyPath
    Puppet::Resource::Param(Any, 'dsc_recoverykeypath'),

    # RecoveryKeyProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recoverykeyprotector'),

    # RecoveryPasswordProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recoverypasswordprotector'),

    # Service
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_service'),

    # SkipHardwareTest
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skiphardwaretest'),

    # StartupKeyPath
    Puppet::Resource::Param(Any, 'dsc_startupkeypath'),

    # StartupKeyProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_startupkeyprotector'),

    # TpmProtector
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_tpmprotector'),

    # UsedSpaceOnly
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usedspaceonly'),

    # The specific backend to use for this `dsc_xblbitlocker`
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
