# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SecuritySetting resource type.
# Automatically generated from
# 'SecurityPolicyDsc/DSCResources/MSFT_SecuritySetting/MSFT_SecuritySetting.schema.mof'
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
  'dsc_securitysetting',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - This is just here to avoid conflicts Valid values are MinimumPasswordAge, MaximumPasswordAge, MinimumPasswordLength, PasswordComplexity, PasswordHistorySize, LockoutBadCount, ForceLogoffWhenHourExpire, NewAdministratorName, NewGuestName, ClearTextPassword, LSAAnonymousNameLookup, EnableAdminAccount, EnableGuestAccount, ResetLockoutCount, LockoutDuration, MaxServiceAge, MaxTicketAge, MaxRenewAge, MaxClockSkew, TicketValidateClient.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Desired state of resource. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # MinimumPasswordAge
    Puppet::Resource::Param(Any, 'dsc_minimumpasswordage'),

    # MaximumPasswordAge
    Puppet::Resource::Param(Any, 'dsc_maximumpasswordage'),

    # MinimumPasswordLength
    Puppet::Resource::Param(Any, 'dsc_minimumpasswordlength'),

    # PasswordComplexity
    Puppet::Resource::Param(Any, 'dsc_passwordcomplexity'),

    # PasswordHistorySize
    Puppet::Resource::Param(Any, 'dsc_passwordhistorysize'),

    # LockoutBadCount
    Puppet::Resource::Param(Any, 'dsc_lockoutbadcount'),

    # ForceLogoffWhenHourExpire
    Puppet::Resource::Param(Any, 'dsc_forcelogoffwhenhourexpire'),

    # NewAdministratorName
    Puppet::Resource::Param(Any, 'dsc_newadministratorname'),

    # NewGuestName
    Puppet::Resource::Param(Any, 'dsc_newguestname'),

    # ClearTextPassword
    Puppet::Resource::Param(Any, 'dsc_cleartextpassword'),

    # LSAAnonymousNameLookup
    Puppet::Resource::Param(Any, 'dsc_lsaanonymousnamelookup'),

    # EnableAdminAccount
    Puppet::Resource::Param(Any, 'dsc_enableadminaccount'),

    # EnableGuestAccount
    Puppet::Resource::Param(Any, 'dsc_enableguestaccount'),

    # ResetLockoutCount
    Puppet::Resource::Param(Any, 'dsc_resetlockoutcount'),

    # LockoutDuration
    Puppet::Resource::Param(Any, 'dsc_lockoutduration'),

    # MaxServiceAge
    Puppet::Resource::Param(Any, 'dsc_maxserviceage'),

    # MaxTicketAge
    Puppet::Resource::Param(Any, 'dsc_maxticketage'),

    # MaxRenewAge
    Puppet::Resource::Param(Any, 'dsc_maxrenewage'),

    # MaxClockSkew
    Puppet::Resource::Param(Any, 'dsc_maxclockskew'),

    # TicketValidateClient
    Puppet::Resource::Param(Any, 'dsc_ticketvalidateclient'),

    # The specific backend to use for this `dsc_securitysetting`
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
