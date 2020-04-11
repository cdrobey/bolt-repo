# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADDomainDefaultPasswordPolicy resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADDomainDefaultPasswordPolicy/MSFT_xADDomainDefaultPasswordPolicy.schema.mof'
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
  'dsc_xaddomaindefaultpasswordpolicy',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DomainName - Name of the domain to which the password policy will be applied
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # ComplexityEnabled - Whether password complexity is enabled for the default password policy
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_complexityenabled'),

    # LockoutDuration - Length of time that an account is locked after the number of failed login attempts (minutes)
    Puppet::Resource::Param(Any, 'dsc_lockoutduration'),

    # LockoutObservationWindow - Maximum time between two unsuccessful login attempts before the counter is reset to 0 (minutes)
    Puppet::Resource::Param(Any, 'dsc_lockoutobservationwindow'),

    # LockoutThreshold - Number of unsuccessful login attempts that are permitted before an account is locked out
    Puppet::Resource::Param(Any, 'dsc_lockoutthreshold'),

    # MinPasswordAge - Minimum length of time that you can have the same password (minutes)
    Puppet::Resource::Param(Any, 'dsc_minpasswordage'),

    # MaxPasswordAge - Maximum length of time that you can have the same password (minutes)
    Puppet::Resource::Param(Any, 'dsc_maxpasswordage'),

    # MinPasswordLength - Minimum number of characters that a password must contain
    Puppet::Resource::Param(Any, 'dsc_minpasswordlength'),

    # PasswordHistoryCount - Number of previous passwords to remember
    Puppet::Resource::Param(Any, 'dsc_passwordhistorycount'),

    # ReversibleEncryptionEnabled - Whether the directory must store passwords using reversible encryption
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_reversibleencryptionenabled'),

    # DomainController - Active Directory domain controller to enact the change upon
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # Credential - Credentials used to access the domain
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # The specific backend to use for this `dsc_xaddomaindefaultpasswordpolicy`
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
