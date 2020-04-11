# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzurePackDatabaseSetting resource type.
# Automatically generated from
# 'xAzurePack/DSCResources/MSFT_xAzurePackDatabaseSetting/MSFT_xAzurePackDatabaseSetting.schema.mof'
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
  'dsc_xazurepackdatabasesetting',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Namespace - Specifies the namespace. Valid values are AdminSite, TenantSite.
    Puppet::Resource::Param(Any, 'dsc_namespace'),

    # Name - Specifies the name of the setting.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Value - Specifies the value of the setting.
    Puppet::Resource::Param(Any, 'dsc_value'),

    # AzurePackAdminCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_azurepackadmincredential'),

    # SQLServer - Database server for the Azure Pack databases.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstance - Database instance for the Azure Pack databases.
    Puppet::Resource::Param(Any, 'dsc_sqlinstance'),

    # dbUser - SQL user to be used to create the database if the SetupCredential cannot be used.
    Puppet::Resource::Param(Any, 'dsc_dbuser'),

    # The specific backend to use for this `dsc_xazurepackdatabasesetting`
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
