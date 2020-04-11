# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADComputer resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADComputer/MSFT_xADComputer.schema.mof'
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
  'dsc_xadcomputer',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ComputerName - Specifies the name of the computer
    Puppet::Resource::Param(Any, 'dsc_computername'),

    # Location - Specifies the location of the computer, such as an office number
    Puppet::Resource::Param(Any, 'dsc_location'),

    # DnsHostName - Specifies the fully qualified domain name (FQDN) of the computer
    Puppet::Resource::Param(Any, 'dsc_dnshostname'),

    # ServicePrincipalNames - Specifies the service principal names for the computer account
    Puppet::Resource::Param(Any, 'dsc_serviceprincipalnames'),

    # UserPrincipalName - Specifies the UPN assigned to the computer account
    Puppet::Resource::Param(Any, 'dsc_userprincipalname'),

    # DisplayName - Specifies the display name of the computer
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Path - Specifies the X.500 path of the Organizational Unit (OU) or container where the computer is located
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Description - Specifies a description of the computer object
    Puppet::Resource::Param(Any, 'dsc_description'),

    # Enabled - Specifies if the computer account is enabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # Manager - Specifies the user or group Distinguished Name that manages the computer object
    Puppet::Resource::Param(Any, 'dsc_manager'),

    # DomainController - Specifies the Active Directory Domain Services instance to connect to perform the task
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # DomainAdministratorCredential - Specifies the user account credentials to use to perform the task
    Puppet::Resource::Param(Any, 'dsc_domainadministratorcredential'),

    # RequestFile - Specifies the full path to the Offline Domain Join Request file to create.
    Puppet::Resource::Param(Any, 'dsc_requestfile'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # DistinguishedName - Returns the X.500 path of the computer object
    Puppet::Resource::Param(Any, 'dsc_distinguishedname'),

    # SID - Returns the security identifier of the computer object
    Puppet::Resource::Param(Any, 'dsc_sid'),

    # The specific backend to use for this `dsc_xadcomputer`
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
