# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPOutgoingEmailSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPOutgoingEmailSettings/MSFT_SPOutgoingEmailSettings.schema.mof'
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
  'dsc_spoutgoingemailsettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # WebAppUrl - The URL of the web application. If you want to set the global settings use the Central Admin URL
    Puppet::Resource::Param(Any, 'dsc_webappurl'),

    # SMTPServer - The SMTP server for outgoing mail
    Puppet::Resource::Param(Any, 'dsc_smtpserver'),

    # FromAddress - The from address to put on messages
    Puppet::Resource::Param(Any, 'dsc_fromaddress'),

    # ReplyToAddress - The email address that replies should be directed to
    Puppet::Resource::Param(Any, 'dsc_replytoaddress'),

    # CharacterSet - The character set to use on messages
    Puppet::Resource::Param(Any, 'dsc_characterset'),

    # UseTLS - Use TLS when connecting to the SMTP server (SharePoint 2016 only)
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_usetls'),

    # SMTPPort - The port which is used to connect to the SMTP server (SharePoint 2016 only)
    Puppet::Resource::Param(Any, 'dsc_smtpport'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spoutgoingemailsettings`
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
