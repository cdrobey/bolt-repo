# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchJetstressCleanup resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchJetstressCleanup/MSFT_xExchJetstressCleanup.schema.mof'
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
  'dsc_xexchjetstresscleanup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # JetstressPath - The path to the folder where Jetstress is installed, and which contains JetstressCmd.exe
    Puppet::Resource::Param(Any, 'dsc_jetstresspath'),

    # ConfigFilePath - Either ConfigFilePath, or DatabasePaths AND LogPaths MUST be specified. ConfigFilePath takes precedence. This is the full path to the JetstressConfig.xml file. If ConfigFilePath is specified, the config file will be used to determine the database and log folders that need to be removed
    Puppet::Resource::Param(Any, 'dsc_configfilepath'),

    # DatabasePaths - Either ConfigFilePath, or DatabasePaths AND LogPaths MUST be specified. DatabasePaths specifies the paths to database directories that should be cleaned up.
    Puppet::Resource::Param(Any, 'dsc_databasepaths'),

    # DeleteAssociatedMountPoints - Defaults to $false. If specified, indicates that mount points associated with the Jetstress database and log paths should be removed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_deleteassociatedmountpoints'),

    # LogPaths - Either ConfigFilePath, or DatabasePaths AND LogPaths MUST be specified. LogPaths specifies the paths to log directories that should be cleaned up.
    Puppet::Resource::Param(Any, 'dsc_logpaths'),

    # OutputSaveLocation - If RemoveBinaries is set to $true and Jetstress output was saved to the default location (the installation path of Jetstress), specifies the folder path to copy the Jetstress output files to.
    Puppet::Resource::Param(Any, 'dsc_outputsavelocation'),

    # RemoveBinaries - Specifies that the files in the Jetstress installation directory should be removed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_removebinaries'),

    # The specific backend to use for this `dsc_xexchjetstresscleanup`
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
