# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCVMMConsoleSetup resource type.
# Automatically generated from
# 'xSCVMM/DSCResources/MSFT_xSCVMMConsoleSetup/MSFT_xSCVMMConsoleSetup.schema.mof'
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
  'dsc_xscvmmconsolesetup',
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

    # ProgramFiles - Installation path for the software.
    Puppet::Resource::Param(Any, 'dsc_programfiles'),

    # IndigoTcpPort - Port for communication with the VMM management server.
    Puppet::Resource::Param(Any, 'dsc_indigotcpport'),

    # MUOptIn - 0: Do not opt in to Microsoft Update. 1: Opt in to Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_muoptin'),

    # The specific backend to use for this `dsc_xscvmmconsolesetup`
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
