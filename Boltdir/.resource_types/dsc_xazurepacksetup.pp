# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzurePackSetup resource type.
# Automatically generated from
# 'xAzurePack/DSCResources/MSFT_xAzurePackSetup/MSFT_xAzurePackSetup.schema.mof'
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
  'dsc_xazurepacksetup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Role - The Azure Pack role to be installed or initialized. Valid values are Admin API, Tenant API, Tenant Public API, SQL Server Extension, MySQL Extension, Admin Site, Admin Authentication Site, Tenant Site, Tenant Authentication Site.
    Puppet::Resource::Param(Any, 'dsc_role'),

    # Action - Install or initialize. Valid values are Install, Initialize.
    Puppet::Resource::Param(Any, 'dsc_action'),

    # SourcePath - UNC path to the root of the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SourceFolder - Folder within the source path containing the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcefolder'),

    # SetupCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # Passphrase - Passphrase for the Azure Pack deployment.
    Puppet::Resource::Param(Any, 'dsc_passphrase'),

    # SQLServer - Database server for the Azure Pack databases.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstance - Database instance for the Azure Pack databases.
    Puppet::Resource::Param(Any, 'dsc_sqlinstance'),

    # dbUser - SQL user to be used to create the database if the SetupCredential cannot be used.
    Puppet::Resource::Param(Any, 'dsc_dbuser'),

    # EnableCeip - Enable Customer Experience Improvement Program.
    Puppet::Resource::Param(Any, 'dsc_enableceip'),

    # The specific backend to use for this `dsc_xazurepacksetup`
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
