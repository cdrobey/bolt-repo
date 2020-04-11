# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCOMManagementServerSetup resource type.
# Automatically generated from
# 'xSCOM/DSCResources/MSFT_xSCOMManagementServerSetup/MSFT_xSCOMManagementServerSetup.schema.mof'
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
  'dsc_xscommanagementserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the OM management server is expected to be installed on the machine.
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

    # ProductKey - Product key for licensed installations.
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # InstallPath - Installation path for the software.
    Puppet::Resource::Param(Any, 'dsc_installpath'),

    # ManagementGroupName - The name of the management group.
    Puppet::Resource::Param(Any, 'dsc_managementgroupname'),

    # FirstManagementServer - Is this the first Management Server?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_firstmanagementserver'),

    # ManagementServicePort - Change the Management Server port on install.
    Puppet::Resource::Param(Any, 'dsc_managementserviceport'),

    # ActionAccount - The domain and user name of the Management server action account.
    Puppet::Resource::Param(Any, 'dsc_actionaccount'),

    # ActionAccountUsername - Output username of the Management server action account.
    Puppet::Resource::Param(Any, 'dsc_actionaccountusername'),

    # DASAccount - The domain and user name of the Data Access service account.
    Puppet::Resource::Param(Any, 'dsc_dasaccount'),

    # DASAccountUsername - Output username of the Data Access service account.
    Puppet::Resource::Param(Any, 'dsc_dasaccountusername'),

    # DataReader - The domain and user name of the data reader account.
    Puppet::Resource::Param(Any, 'dsc_datareader'),

    # DataReaderUsername - Output username of the data reader account.
    Puppet::Resource::Param(Any, 'dsc_datareaderusername'),

    # DataWriter - The domain and user name of the data Writer account.
    Puppet::Resource::Param(Any, 'dsc_datawriter'),

    # DataWriterUsername - Output username of the data writer account.
    Puppet::Resource::Param(Any, 'dsc_datawriterusername'),

    # SqlServerInstance - The SQL server and instance.
    Puppet::Resource::Param(Any, 'dsc_sqlserverinstance'),

    # DatabaseName - The name of the Operational database.
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseSize - The size in MB of the Operational database.
    Puppet::Resource::Param(Any, 'dsc_databasesize'),

    # DwSqlServerInstance - The data warehouse server and instance.
    Puppet::Resource::Param(Any, 'dsc_dwsqlserverinstance'),

    # DwDatabaseName - The name of the data warehouse database.
    Puppet::Resource::Param(Any, 'dsc_dwdatabasename'),

    # DwDatabaseSize - The size in MB of the data warehouse database.
    Puppet::Resource::Param(Any, 'dsc_dwdatabasesize'),

    # UseMicrosoftUpdate - 0: Do not opt in to Microsoft Update. 1: Opt in to Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_usemicrosoftupdate'),

    # SendCEIPReports - 0: Do not opt in to the Customer Experience Improvement Program (CEIP). 1: Opt in to CEIP.
    Puppet::Resource::Param(Any, 'dsc_sendceipreports'),

    # EnableErrorReporting - Never: Do not opt in to sending automatic error reports. Queued: Opt in to sending error reports, but queue the reports for review before sending. Always: Opt in to automatically send error reports. Valid values are Never, Queued, Always.
    Puppet::Resource::Param(Any, 'dsc_enableerrorreporting'),

    # SendODRReports - 0: Do not opt in to sending operational data reports. 1: opt in to sending operational data reports.
    Puppet::Resource::Param(Any, 'dsc_sendodrreports'),

    # The specific backend to use for this `dsc_xscommanagementserversetup`
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
