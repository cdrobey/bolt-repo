# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCOMWebConsoleServerSetup resource type.
# Automatically generated from
# 'xSCOM/DSCResources/MSFT_xSCOMWebConsoleServerSetup/MSFT_xSCOMWebConsoleServerSetup.schema.mof'
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
  'dsc_xscomwebconsoleserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the OM Web Console server is expected to be installed on the machine.
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

    # InstallPath - Installation path for the software.
    Puppet::Resource::Param(Any, 'dsc_installpath'),

    # ManagementServer - The name of the management server associated with the Reporting server.
    Puppet::Resource::Param(Any, 'dsc_managementserver'),

    # WebSiteName - The name of the website.
    Puppet::Resource::Param(Any, 'dsc_websitename'),

    # WebConsoleAuthorizationMode - Mixed: Used for intranet scenarios. Network: Used for extranet scenarios. Valid values are Mixed, Network.
    Puppet::Resource::Param(Any, 'dsc_webconsoleauthorizationmode'),

    # WebConsoleUseSSL - Specify only if your website has Secure Sockets Layer (SSL) activated.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_webconsoleusessl'),

    # UseMicrosoftUpdate - 0: Do not opt in to Microsoft Update. 1: Opt in to Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_usemicrosoftupdate'),

    # SendCEIPReports - 0: Do not opt in to the Customer Experience Improvement Program (CEIP). 1: Opt in to CEIP.
    Puppet::Resource::Param(Any, 'dsc_sendceipreports'),

    # EnableErrorReporting - Never: Do not opt in to sending automatic error reports. Queued: Opt in to sending error reports, but queue the reports for review before sending. Always: Opt in to automatically send error reports. Valid values are Never, Queued, Always.
    Puppet::Resource::Param(Any, 'dsc_enableerrorreporting'),

    # SendODRReports - 0: Do not opt in to sending operational data reports. 1: opt in to sending operational data reports.
    Puppet::Resource::Param(Any, 'dsc_sendodrreports'),

    # The specific backend to use for this `dsc_xscomwebconsoleserversetup`
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
