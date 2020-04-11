# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCVMMManagementServerSetup resource type.
# Automatically generated from
# 'xSCVMM/DSCResources/MSFT_xSCVMMManagementServerSetup/MSFT_xSCVMMManagementServerSetup.schema.mof'
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
  'dsc_xscvmmmanagementserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the DPM server is expected to be installed on the machine.
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

    # vmmService - Domain account for the VMM service.
    Puppet::Resource::Param(Any, 'dsc_vmmservice'),

    # vmmServiceUsername - Output username of the VMM service.
    Puppet::Resource::Param(Any, 'dsc_vmmserviceusername'),

    # ProductKey - Product key for licensed installations.
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # UserName - Display name for the user.
    Puppet::Resource::Param(Any, 'dsc_username'),

    # CompanyName - Display name for the organization.
    Puppet::Resource::Param(Any, 'dsc_companyname'),

    # ProgramFiles - Installation path for the software.
    Puppet::Resource::Param(Any, 'dsc_programfiles'),

    # ClusterManagementServer - Is this a clustered Management Server?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_clustermanagementserver'),

    # FirstManagementServer - Is this the first Management Server?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_firstmanagementserver'),

    # CreateNewSqlDatabase - 0: Use an existing Microsoft SQL Server database. 1: Create a new SQL Server database.
    Puppet::Resource::Param(Any, 'dsc_createnewsqldatabase'),

    # SqlMachineName - Name of the server that is hosting SQL Server.
    Puppet::Resource::Param(Any, 'dsc_sqlmachinename'),

    # SqlInstanceName - Name of the new or existing instance of SQL Server.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # SqlDatabaseName - Name of the new or existing SQL Server database.
    Puppet::Resource::Param(Any, 'dsc_sqldatabasename'),

    # IndigoTcpPort - Port for communication with the VMM console.
    Puppet::Resource::Param(Any, 'dsc_indigotcpport'),

    # IndigoHTTPSPort - Port for communication with the Windows Preinstallation Environment agents.
    Puppet::Resource::Param(Any, 'dsc_indigohttpsport'),

    # IndigoNETTCPPort - Port for communication with Windows Deployment Services.
    Puppet::Resource::Param(Any, 'dsc_indigonettcpport'),

    # IndigoHTTPPort - Port for communication with Windows PE agent for time synchronization.
    Puppet::Resource::Param(Any, 'dsc_indigohttpport'),

    # WSManTcpPort - Port for communication with agents on hosts and library servers.
    Puppet::Resource::Param(Any, 'dsc_wsmantcpport'),

    # BitsTcpPort - Port for file transfers to agents on hosts and library servers.
    Puppet::Resource::Param(Any, 'dsc_bitstcpport'),

    # CreateNewLibraryShare - 0: Use an existing library share. 1: Create a new library share.
    Puppet::Resource::Param(Any, 'dsc_createnewlibraryshare'),

    # LibraryShareName - Name of the file share to be used or created.
    Puppet::Resource::Param(Any, 'dsc_librarysharename'),

    # LibrarySharePath - Location of the existing file share or the new file share to be created.
    Puppet::Resource::Param(Any, 'dsc_librarysharepath'),

    # LibraryShareDescription - Description of the share.
    Puppet::Resource::Param(Any, 'dsc_librarysharedescription'),

    # TopContainerName - Container for Distributed Key Management.
    Puppet::Resource::Param(Any, 'dsc_topcontainername'),

    # VmmServerName - Clustered service name for a highly available VMM management server.
    Puppet::Resource::Param(Any, 'dsc_vmmservername'),

    # VMMStaticIPAddress - IP address for the clustered service name for a highly available VMM management server, if you are not using Dynamic Host Configuration Protocol (DHCP).
    Puppet::Resource::Param(Any, 'dsc_vmmstaticipaddress'),

    # RetainSqlDatabase - 0: Remove the SQL Server database. 1: Do not remove the SQL Server database.
    Puppet::Resource::Param(Any, 'dsc_retainsqldatabase'),

    # ForceHAVMMUninstall - 0: Do not force uninstallation if setup.exe cannot verify whether this node is the final node of the highly available installation. 1: Force the uninstallation.
    Puppet::Resource::Param(Any, 'dsc_forcehavmmuninstall'),

    # SQMOptIn - 0: Do not opt in to the Customer Experience Improvement Program (CEIP). 1: Opt in to CEIP.
    Puppet::Resource::Param(Any, 'dsc_sqmoptin'),

    # MUOptIn - 0: Do not opt in to Microsoft Update. 1: Opt in to Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_muoptin'),

    # The specific backend to use for this `dsc_xscvmmmanagementserversetup`
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
