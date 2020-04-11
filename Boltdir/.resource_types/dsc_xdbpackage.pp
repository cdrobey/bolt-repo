# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDBPackage resource type.
# Automatically generated from
# 'xDatabase/DSCResources/MSFT_xDBPackage/MSFT_xDBPackage.schema.mof'
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
  'dsc_xdbpackage',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Credentials - Credentials to Connect to the sql server
    Puppet::Resource::Param(Any, 'dsc_credentials'),

    # DatabaseName - Name of the Database
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # SqlServer - Sql Server Name
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # Path - Path to BacPac/DacPac
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Type - Type for backup(Extract id done for DACPAC and Import for BACPAC) Valid values are DACPAC, BACPAC.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # SqlServerVersion - Sql Server Version For DacFx Valid values are 2008-R2, 2012, 2014.
    Puppet::Resource::Param(Any, 'dsc_sqlserverversion'),

    # The specific backend to use for this `dsc_xdbpackage`
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
