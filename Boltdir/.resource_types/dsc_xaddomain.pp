# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADDomain resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADDomain/MSFT_xADDomain.schema.mof'
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
  'dsc_xaddomain',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DomainName - Name of the domain to which the user will be added
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # DomainAdministratorCredential - Credentials used to query for domain existence
    Puppet::Resource::Param(Any, 'dsc_domainadministratorcredential'),

    # SafemodeAdministratorPassword - Password for the administrator account when the computer is started in Safe Mode
    Puppet::Resource::Param(Any, 'dsc_safemodeadministratorpassword'),

    # ParentDomainName - Fully qualified name of the parent domain
    Puppet::Resource::Param(Any, 'dsc_parentdomainname'),

    # DomainNetbiosName - NetBIOS name for the new domain
    Puppet::Resource::Param(Any, 'dsc_domainnetbiosname'),

    # DnsDelegationCredential - Credential used for creating DNS delegation
    Puppet::Resource::Param(Any, 'dsc_dnsdelegationcredential'),

    # DatabasePath - Path to a directory that contains the domain database
    Puppet::Resource::Param(Any, 'dsc_databasepath'),

    # LogPath - Path to a directory for the log file that will be written
    Puppet::Resource::Param(Any, 'dsc_logpath'),

    # SysvolPath - Path to a directory where the Sysvol file will be written
    Puppet::Resource::Param(Any, 'dsc_sysvolpath'),

    # The specific backend to use for this `dsc_xaddomain`
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
