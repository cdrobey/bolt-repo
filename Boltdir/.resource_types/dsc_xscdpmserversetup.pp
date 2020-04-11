# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCDPMServerSetup resource type.
# Automatically generated from
# 'xSCDPM/DSCResources/MSFT_xSCDPMServerSetup/MSFT_xSCDPMServerSetup.schema.mof'
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
  'dsc_xscdpmserversetup',
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

    # SourcePath - UNC path to the root of the source filesfor installation.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SourceFolder - Folder within the source path containing the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcefolder'),

    # SetupCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # UserName - User name that the software will be registered to.
    Puppet::Resource::Param(Any, 'dsc_username'),

    # CompanyName - Company name that the software will be registered to.
    Puppet::Resource::Param(Any, 'dsc_companyname'),

    # ProductKey - Product key for licensed installations.
    Puppet::Resource::Param(Any, 'dsc_productkey'),

    # ProgramFiles - Installation path for the software.
    Puppet::Resource::Param(Any, 'dsc_programfiles'),

    # YukonMachineName - Name of the SQL server for the DPM database.
    Puppet::Resource::Param(Any, 'dsc_yukonmachinename'),

    # YukonInstanceName - SQL instance for the DPM database.
    Puppet::Resource::Param(Any, 'dsc_yukoninstancename'),

    # YukonMachineCredential - Credential to be used to access the SQL instance for DPM at installation time.
    Puppet::Resource::Param(Any, 'dsc_yukonmachinecredential'),

    # ReportingMachineName - Name of the SQL server for reporting.
    Puppet::Resource::Param(Any, 'dsc_reportingmachinename'),

    # ReportingInstanceName - SQL instance for reporting.
    Puppet::Resource::Param(Any, 'dsc_reportinginstancename'),

    # ReportingMachineCredential - Credential to be used to access SQL reporting for DPM at installation time.
    Puppet::Resource::Param(Any, 'dsc_reportingmachinecredential'),

    # The specific backend to use for this `dsc_xscdpmserversetup`
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
