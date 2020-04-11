# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPPasswordChangeSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPPasswordChangeSettings/MSFT_SPPasswordChangeSettings.schema.mof'
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
  'dsc_sppasswordchangesettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # MailAddress - The email address to send notifications of password changes to
    Puppet::Resource::Param(Any, 'dsc_mailaddress'),

    # DaysBeforeExpiry - The number of days before password expiry to send send emails
    Puppet::Resource::Param(Any, 'dsc_daysbeforeexpiry'),

    # PasswordChangeWaitTimeSeconds - The duration that a password reset will wait for before it times out
    Puppet::Resource::Param(Any, 'dsc_passwordchangewaittimeseconds'),

    # NumberOfRetries - How many retries if the password change fails
    Puppet::Resource::Param(Any, 'dsc_numberofretries'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_sppasswordchangesettings`
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
