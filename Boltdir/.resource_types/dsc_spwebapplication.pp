# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPWebApplication resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPWebApplication/MSFT_SPWebApplication.schema.mof'
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
  'dsc_spwebapplication',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the web application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ApplicationPool - The name of the application pool to run this site in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # ApplicationPoolAccount - The name of the managed account to run the app pool with
    Puppet::Resource::Param(Any, 'dsc_applicationpoolaccount'),

    # Url - The URL of the web application
    Puppet::Resource::Param(Any, 'dsc_url'),

    # AllowAnonymous - Should anonymous access be enabled for this web app
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowanonymous'),

    # AuthenticationMethod - What authentication mode should be used for the web app Valid values are NTLM, Kerberos, Claims, Classic.
    Puppet::Resource::Param(Any, 'dsc_authenticationmethod'),

    # AuthenticationProvider - What authentication provider should be used for the web app. This value is required when AuthenticationMethod is set to Claims
    Puppet::Resource::Param(Any, 'dsc_authenticationprovider'),

    # DatabaseName - The name of the first content database to be created with this web app
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # DatabaseServer - The name of the database server to host the default content DB
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # HostHeader - The host header to use for the web app
    Puppet::Resource::Param(Any, 'dsc_hostheader'),

    # Path - The path on the local servers to host the IIS web site from
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Port - The port to run the site on
    Puppet::Resource::Param(Any, 'dsc_port'),

    # UseSSL - Should this web app use SSL
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usessl'),

    # Ensure - Present if the web app should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spwebapplication`
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
