# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC File resource type.
# Automatically generated from
# 'PSDesiredStateConfiguration/DSCResources/MSFT_FileDirectoryConfiguration/MSFT_FileDirectoryConfiguration.schema.mof'
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
  'dsc_file',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DestinationPath
    Puppet::Resource::Param(Any, 'dsc_destinationpath'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Type - Valid values are File, Directory.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # SourcePath
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # Contents
    Puppet::Resource::Param(Any, 'dsc_contents'),

    # Checksum - Valid values are SHA-1, SHA-256, SHA-512, CreatedDate, ModifiedDate.
    Puppet::Resource::Param(Any, 'dsc_checksum'),

    # Recurse
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_recurse'),

    # Force
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Attributes - Valid values are ReadOnly, Hidden, System, Archive.
    Puppet::Resource::Param(Any, 'dsc_attributes'),

    # DependsOn
    Puppet::Resource::Param(Any, 'dsc_dependson'),

    # MatchSource
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_matchsource'),

    # The specific backend to use for this `dsc_file`
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
