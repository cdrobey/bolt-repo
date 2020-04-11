# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPManagedAccount resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPManagedAccount/MSFT_SPManagedAccount.schema.mof'
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
  'dsc_spmanagedaccount',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # AccountName - The username of the account
    Puppet::Resource::Param(Any, 'dsc_accountname'),

    # Account - The credential with password of the account
    Puppet::Resource::Param(Any, 'dsc_account'),

    # EmailNotification - How many days before a password change should an email be sent
    Puppet::Resource::Param(Any, 'dsc_emailnotification'),

    # PreExpireDays - How many days before a password expires should it be changed
    Puppet::Resource::Param(Any, 'dsc_preexpiredays'),

    # Schedule - What is the schedule for the password reset
    Puppet::Resource::Param(Any, 'dsc_schedule'),

    # Ensure - Present ensures managed account exists, absent ensures it is removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spmanagedaccount`
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
