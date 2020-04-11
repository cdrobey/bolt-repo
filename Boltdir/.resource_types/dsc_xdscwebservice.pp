# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xDSCWebService resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xDSCWebService/MSFT_xDSCWebService.schema.mof'
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
  'dsc_xdscwebservice',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # EndpointName
    Puppet::Resource::Param(Any, 'dsc_endpointname'),

    # CertificateThumbPrint - Can take the value AllowUnencryptedTraffic for setting up a non SSL based endpoint
    Puppet::Resource::Param(Any, 'dsc_certificatethumbprint'),

    # Port
    Puppet::Resource::Param(Any, 'dsc_port'),

    # PhysicalPath
    Puppet::Resource::Param(Any, 'dsc_physicalpath'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # State - Valid values are Started, Stopped.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # DatabasePath
    Puppet::Resource::Param(Any, 'dsc_databasepath'),

    # ModulePath
    Puppet::Resource::Param(Any, 'dsc_modulepath'),

    # ConfigurationPath
    Puppet::Resource::Param(Any, 'dsc_configurationpath'),

    # DSCServerUrl
    Puppet::Resource::Param(Any, 'dsc_dscserverurl'),

    # RegistrationKeyPath
    Puppet::Resource::Param(Any, 'dsc_registrationkeypath'),

    # AcceptSelfSignedCertificates
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_acceptselfsignedcertificates'),

    # UseSecurityBestPractices - This property will ensure that the Pull Server is created with the most secure practices
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usesecuritybestpractices'),

    # DisableSecurityBestPractices - Valid values are SecureTLSProtocols.
    Puppet::Resource::Param(Any, 'dsc_disablesecuritybestpractices'),

    # The specific backend to use for this `dsc_xdscwebservice`
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
