# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCSMAWebServiceServerSetup resource type.
# Automatically generated from
# 'xSCSMA/DSCResources/MSFT_xSCSMAWebServiceServerSetup/MSFT_xSCSMAWebServiceServerSetup.schema.mof'
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
  'dsc_xscsmawebserviceserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the SMA Web Service server is expected to be installed on the machine.
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

    # FirstWebServiceServer - Is this the first Management Server?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_firstwebserviceserver'),

    # ApPool - Service account of the web service application pool.
    Puppet::Resource::Param(Any, 'dsc_appool'),

    # ApPoolUsername - Output username of the web service application pool.
    Puppet::Resource::Param(Any, 'dsc_appoolusername'),

    # AdminGroupMembers - A comma-separated list of users to add to the IIS Administrators group.
    Puppet::Resource::Param(Any, 'dsc_admingroupmembers'),

    # SqlServer - Name of the SQL Server for the SMA database.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SqlInstance - Name of the SQL Instance for the SMA database.
    Puppet::Resource::Param(Any, 'dsc_sqlinstance'),

    # SqlDatabase - Name of the SMA database.
    Puppet::Resource::Param(Any, 'dsc_sqldatabase'),

    # SiteName - Name of the SMA web site.
    Puppet::Resource::Param(Any, 'dsc_sitename'),

    # WebServicePort - Port of the SMA web site.
    Puppet::Resource::Param(Any, 'dsc_webserviceport'),

    # InstallFolder - Installation folder for SMA.
    Puppet::Resource::Param(Any, 'dsc_installfolder'),

    # UseSSL - Use SSL?
    Puppet::Resource::Param(Any, 'dsc_usessl'),

    # SpecifyCertificate - Specify an existing certificate for the SMA web site.
    Puppet::Resource::Param(Any, 'dsc_specifycertificate'),

    # CertificateName - Name of the existing certificate to use.
    Puppet::Resource::Param(Any, 'dsc_certificatename'),

    # ETWManifest - Log to ETW.
    Puppet::Resource::Param(Any, 'dsc_etwmanifest'),

    # SendCEIPReports - Send Customer Experience Improvement Program.
    Puppet::Resource::Param(Any, 'dsc_sendceipreports'),

    # MSUpdate - Use Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_msupdate'),

    # ProductKey - Product key for licensed installations.
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # RunbookWorkerServers - Array of Runbook Worker servers in this deployment.
    Puppet::Resource::Param(Any, 'dsc_runbookworkerservers'),

    # The specific backend to use for this `dsc_xscsmawebserviceserversetup`
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
