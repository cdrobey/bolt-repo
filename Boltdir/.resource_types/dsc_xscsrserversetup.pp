# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCSRServerSetup resource type.
# Automatically generated from
# 'xSCSR/DSCResources/MSFT_xSCSRServerSetup/MSFT_xSCSRServerSetup.schema.mof'
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
  'dsc_xscsrserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the Service Reporting server is expected to be installed on the machine.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SourcePath - UNC path to the root of the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SourceFolder - Folder within the source path containing the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcefolder'),

    # SetupCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # SendCEIPReports - Participation in Customer Experience Improvement Program (yes or no). Valid values are Yes, No.
    Puppet::Resource::Param(Any, 'dsc_sendceipreports'),

    # UseMicrosoftUpdate - Participation in Microsoft Update (yes or no). Valid values are Yes, No.
    Puppet::Resource::Param(Any, 'dsc_usemicrosoftupdate'),

    # InstallFolder - Folder to install to.
    Puppet::Resource::Param(Any, 'dsc_installfolder'),

    # DatabaseServer - Name of the server that is running SQL Server where the databases already exist, or where Setup will create them .
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # DatabaseServerInstance - Name of the SQL Server database instance to install to.
    Puppet::Resource::Param(Any, 'dsc_databaseserverinstance'),

    # RepositoryDatabaseName - Name of the usage repository database that already exists, or that Setup will create.
    Puppet::Resource::Param(Any, 'dsc_repositorydatabasename'),

    # StagingDatabaseName - Name of the usage staging database that already exists, or that Setup will create.
    Puppet::Resource::Param(Any, 'dsc_stagingdatabasename'),

    # DWDatabaseName - Name of the usage data warehouse database that already exists, or that Setup will create.
    Puppet::Resource::Param(Any, 'dsc_dwdatabasename'),

    # AnalysisDatabaseServer - Name of the server that is running SQL Server where the analysis database already exists, or where Setup will create it.
    Puppet::Resource::Param(Any, 'dsc_analysisdatabaseserver'),

    # AnalysisDatabaseServerInstance - Name of the SQL Server analysis database instance to install to.
    Puppet::Resource::Param(Any, 'dsc_analysisdatabaseserverinstance'),

    # AnalysisDatabaseName - Name of the analysis database that already exists, or that Setup will create.
    Puppet::Resource::Param(Any, 'dsc_analysisdatabasename'),

    # The specific backend to use for this `dsc_xscsrserversetup`
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
