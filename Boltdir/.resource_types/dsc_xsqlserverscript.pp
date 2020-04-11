# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerScript resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerScript/MSFT_xSQLServerScript.schema.mof'
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
  'dsc_xsqlserverscript',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ServerInstance - The name of an instance of the Database Engine. For a default instance, only specify the computer name. For a named instance, use the format ComputerName\InstanceName
    Puppet::Resource::Param(Any, 'dsc_serverinstance'),

    # SetFilePath - Path to the T-SQL file that will perform Set action.
    Puppet::Resource::Param(Any, 'dsc_setfilepath'),

    # GetFilePath - Path to the T-SQL file that will perform Get action. Any values returned by the T-SQL queries will also be returned by the cmdlet Get-DscConfiguration through the 'GetResult' property.
    Puppet::Resource::Param(Any, 'dsc_getfilepath'),

    # TestFilePath - Path to the T-SQL file that will perform Test action. Any script that does not throw an error or returns null is evaluated to true. The cmdlet Invoke-SqlCmd treats T-SQL Print statements as verbose text, and will not cause the test to return false.
    Puppet::Resource::Param(Any, 'dsc_testfilepath'),

    # Credential - The credentials to authenticate with, using SQL Authentication. To authenticate using Windows Authentication, assign the credentials to the built-in parameter 'PsDscRunAsCredential'. If both parameters 'Credential' and 'PsDscRunAsCredential' are not assigned, then SYSTEM account will be used to authenticate using Windows Authentication.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Variable - Specifies, as a string array, a sqlcmd scripting variable for use in the sqlcmd script, and sets a value for the variable. Use a Windows PowerShell array to specify multiple variables and their values. For more information how to use this, please go to the help documentation for Invoke-Sqlcmd.
    Puppet::Resource::Param(Any, 'dsc_variable'),

    # GetResult - Contains the values returned from the T-SQL script provided in the parameter 'GetFilePath' when cmdlet Get-DscConfiguration is run.
    Puppet::Resource::Param(Any, 'dsc_getresult'),

    # The specific backend to use for this `dsc_xsqlserverscript`
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
