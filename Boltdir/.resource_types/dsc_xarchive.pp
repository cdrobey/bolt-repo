# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xArchive resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xArchive/MSFT_xArchive.schema.mof'
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
  'dsc_xarchive',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - The path to the archive file that should be expanded to or removed from the specified destination.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Destination - The path where the specified archive file should be expanded to or removed from.
    Puppet::Resource::Param(Any, 'dsc_destination'),

    # Ensure - Specifies whether or not the expanded content of the archive file at the specified path should exist at the specified destination. To update the specified destination to have the expanded content of the archive file at the specified path, specify this property as Present. To remove the expanded content of the archive file at the specified path from the specified destination, specify this property as Absent. The default value is Present. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Validate - Specifies whether or not to validate that a file at the destination with the same name as a file in the archive actually matches that corresponding file in the archive by the specified checksum method. If the file does not match and Ensure is specified as Present and Force is not specified, the resource will throw an error that the file at the desintation cannot be overwritten. If the file does not match and Ensure is specified as Present and Force is specified, the file at the desintation will be overwritten. If the file does not match and Ensure is specified as Absent, the file at the desintation will not be removed. The default value is false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_validate'),

    # Checksum - The Checksum method to use to validate whether or not a file at the destination with the same name as a file in the archive actually matches that corresponding file in the archive. An invalid argument exception will be thrown if Checksum is specified while Validate is specified as false. ModifiedDate will check that the LastWriteTime property of the file at the destination matches the LastWriteTime property of the file in the archive. CreatedDate will check that the CreationTime property of the file at the destination matches the CreationTime property of the file in the archive. SHA-1, SHA-256, and SHA-512 will check that the hash of the file at the destination by the specified SHA method matches the hash of the file in the archive by the specified SHA method. The default value is ModifiedDate. Valid values are SHA-1, SHA-256, SHA-512, CreatedDate, ModifiedDate.
    Puppet::Resource::Param(Any, 'dsc_checksum'),

    # Credential - The credential of a user account with permissions to access the specified archive path and destination if needed.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Force - Specifies whether or not any existing files or directories at the destination with the same name as a file or directory in the archive should be overwritten to match the file or directory in the archive. When this property is false, an error will be thrown if an item at the destination needs to be overwritten. The default value is false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # The specific backend to use for this `dsc_xarchive`
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
