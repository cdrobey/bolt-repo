# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSmbShare resource type.
# Automatically generated from
# 'xSmbShare/DscResources/MSFT_xSmbShare/MSFT_xSmbShare.schema.mof'
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
  'dsc_xsmbshare',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Name of the SMB Share
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Path - Path to the share
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Description - Description of the share
    Puppet::Resource::Param(Any, 'dsc_description'),

    # ChangeAccess - Specifies which user will be granted modify permission to access the share
    Puppet::Resource::Param(Any, 'dsc_changeaccess'),

    # ConcurrentUserLimit - Specifies the maximum number of concurrently connected users that the new SMB share may accommodate. If this parameter is set to zero (0), then the number of users is unlimited. The default value is zero (0).
    Puppet::Resource::Param(Any, 'dsc_concurrentuserlimit'),

    # EncryptData - Indicates that the share is encrypted.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_encryptdata'),

    # FolderEnumerationMode - Specifies which files and folders in the new SMB share are visible to users. Valid values are AccessBased, Unrestricted.
    Puppet::Resource::Param(Any, 'dsc_folderenumerationmode'),

    # FullAccess - Specifies which accounts are granted full permission to access the share.
    Puppet::Resource::Param(Any, 'dsc_fullaccess'),

    # NoAccess - Specifies which accounts are denied access to the share.
    Puppet::Resource::Param(Any, 'dsc_noaccess'),

    # ReadAccess - Specifies which user is granted read permission to access the share.
    Puppet::Resource::Param(Any, 'dsc_readaccess'),

    # Ensure - Specifies if the share should be added or removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ShareState - Specfies the state of the share
    Puppet::Resource::Param(Any, 'dsc_sharestate'),

    # ShareType - Specfies the type of the share
    Puppet::Resource::Param(Any, 'dsc_sharetype'),

    # ShadowCopy - Specifies if this share is a ShadowCopy
    Puppet::Resource::Param(Any, 'dsc_shadowcopy'),

    # Special - Specifies if this share is a Special Share. Admin share, default shares, IPC$ share are examples.
    Puppet::Resource::Param(Any, 'dsc_special'),

    # The specific backend to use for this `dsc_xsmbshare`
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
