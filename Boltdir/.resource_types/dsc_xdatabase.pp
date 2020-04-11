# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDatabase resource type.
# Automatically generated from
# 'xDatabase/DSCResources/MSFT_xDatabase/MSFT_xDatabase.schema.mof'
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
  'dsc_xdatabase',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Credentials - Credentials to Connect to the sql server
    Puppet::Resource::Param(Any, 'dsc_credentials'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SqlServer - Sql Server Name
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SqlServerVersion - Sql Server Version For DacFx Valid values are 2008-R2, 2012, 2014.
    Puppet::Resource::Param(Any, 'dsc_sqlserverversion'),

    # BacPacPath - Path to BacPac, if this is specified resore is performed
    Puppet::Resource::Param(Any, 'dsc_bacpacpath'),

    # DatabaseName - Name of the Database
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DacPacPath - Path to DacPac, if this is specified dacpac deployment is performed
    Puppet::Resource::Param(Any, 'dsc_dacpacpath'),

    # DacPacApplicationName - DacPac Application Name for Registration
    Puppet::Resource::Param(Any, 'dsc_dacpacapplicationname'),

    # DacPacApplicationVersion - DacPac Application Version for Registration
    Puppet::Resource::Param(Any, 'dsc_dacpacapplicationversion'),

    # The specific backend to use for this `dsc_xdatabase`
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
