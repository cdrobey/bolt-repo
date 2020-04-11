# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADUser resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADUser/MSFT_xADUser.schema.mof'
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
  'dsc_xaduser',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # DomainName - Name of the domain where the user account is located (only used if password is managed)
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # UserName - Specifies the Security Account Manager (SAM) account name of the user (ldapDisplayName 'sAMAccountName')
    Puppet::Resource::Param(Any, 'dsc_username'),

    # Password - Specifies a new password value for the account
    Puppet::Resource::Param(Any, 'dsc_password'),

    # Ensure - Specifies whether the user account is created or deleted Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # CommonName - Specifies the common nane assigned to the user account (ldapDisplayName 'cn')
    Puppet::Resource::Param(Any, 'dsc_commonname'),

    # UserPrincipalName - Specifies the UPN assigned to the user account (ldapDisplayName 'userPrincipalName')
    Puppet::Resource::Param(Any, 'dsc_userprincipalname'),

    # DisplayName - Specifies the display name of the object (ldapDisplayName 'displayName')
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Path - Specifies the X.500 path of the Organizational Unit (OU) or container where the new object is created
    Puppet::Resource::Param(Any, 'dsc_path'),

    # GivenName - Specifies the user's given name (ldapDisplayName 'givenName')
    Puppet::Resource::Param(Any, 'dsc_givenname'),

    # Initials - Specifies the initials that represent part of a user's name (ldapDisplayName 'initials')
    Puppet::Resource::Param(Any, 'dsc_initials'),

    # Surname - Specifies the user's last name or surname (ldapDisplayName 'sn')
    Puppet::Resource::Param(Any, 'dsc_surname'),

    # Description - Specifies a description of the object (ldapDisplayName 'description')
    Puppet::Resource::Param(Any, 'dsc_description'),

    # StreetAddress - Specifies the user's street address (ldapDisplayName 'streetAddress')
    Puppet::Resource::Param(Any, 'dsc_streetaddress'),

    # POBox - Specifies the user's post office box number (ldapDisplayName 'postOfficeBox')
    Puppet::Resource::Param(Any, 'dsc_pobox'),

    # City - Specifies the user's town or city (ldapDisplayName 'l')
    Puppet::Resource::Param(Any, 'dsc_city'),

    # State - Specifies the user's or Organizational Unit's state or province (ldapDisplayName 'st')
    Puppet::Resource::Param(Any, 'dsc_state'),

    # PostalCode - Specifies the user's postal code or zip code (ldapDisplayName 'postalCode')
    Puppet::Resource::Param(Any, 'dsc_postalcode'),

    # Country - Specifies the country or region code for the user's language of choice (ldapDisplayName 'c')
    Puppet::Resource::Param(Any, 'dsc_country'),

    # Department - Specifies the user's department (ldapDisplayName 'department')
    Puppet::Resource::Param(Any, 'dsc_department'),

    # Division - Specifies the user's division (ldapDisplayName 'division')
    Puppet::Resource::Param(Any, 'dsc_division'),

    # Company - Specifies the user's company (ldapDisplayName 'company')
    Puppet::Resource::Param(Any, 'dsc_company'),

    # Office - Specifies the location of the user's office or place of business (ldapDisplayName 'physicalDeliveryOfficeName')
    Puppet::Resource::Param(Any, 'dsc_office'),

    # JobTitle - Specifies the user's title (ldapDisplayName 'title')
    Puppet::Resource::Param(Any, 'dsc_jobtitle'),

    # EmailAddress - Specifies the user's e-mail address (ldapDisplayName 'mail')
    Puppet::Resource::Param(Any, 'dsc_emailaddress'),

    # EmployeeID - Specifies the user's employee ID (ldapDisplayName 'employeeID')
    Puppet::Resource::Param(Any, 'dsc_employeeid'),

    # EmployeeNumber - Specifies the user's employee number (ldapDisplayName 'employeeNumber')
    Puppet::Resource::Param(Any, 'dsc_employeenumber'),

    # HomeDirectory - Specifies a user's home directory path (ldapDisplayName 'homeDirectory')
    Puppet::Resource::Param(Any, 'dsc_homedirectory'),

    # HomeDrive - Specifies a drive that is associated with the UNC path defined by the HomeDirectory property (ldapDisplayName 'homeDrive')
    Puppet::Resource::Param(Any, 'dsc_homedrive'),

    # HomePage - Specifies the URL of the home page of the object (ldapDisplayName 'wWWHomePage')
    Puppet::Resource::Param(Any, 'dsc_homepage'),

    # ProfilePath - Specifies a path to the user's profile (ldapDisplayName 'profilePath')
    Puppet::Resource::Param(Any, 'dsc_profilepath'),

    # LogonScript - Specifies a path to the user's log on script (ldapDisplayName 'scriptPath')
    Puppet::Resource::Param(Any, 'dsc_logonscript'),

    # Notes - Specifies the notes attached to the user's accoutn (ldapDisplayName 'info')
    Puppet::Resource::Param(Any, 'dsc_notes'),

    # OfficePhone - Specifies the user's office telephone number (ldapDisplayName 'telephoneNumber')
    Puppet::Resource::Param(Any, 'dsc_officephone'),

    # MobilePhone - Specifies the user's mobile phone number (ldapDisplayName 'mobile')
    Puppet::Resource::Param(Any, 'dsc_mobilephone'),

    # Fax - Specifies the user's fax phone number (ldapDisplayName 'facsimileTelephoneNumber')
    Puppet::Resource::Param(Any, 'dsc_fax'),

    # HomePhone - Specifies the user's home telephone number (ldapDisplayName 'homePhone')
    Puppet::Resource::Param(Any, 'dsc_homephone'),

    # Pager - Specifies the user's pager number (ldapDisplayName 'pager')
    Puppet::Resource::Param(Any, 'dsc_pager'),

    # IPPhone - Specifies the user's IP telephony phone number (ldapDisplayName 'ipPhone')
    Puppet::Resource::Param(Any, 'dsc_ipphone'),

    # Manager - Specifies the user's manager specified as a Distinguished Name (ldapDisplayName 'manager')
    Puppet::Resource::Param(Any, 'dsc_manager'),

    # Enabled - Specifies if the account is enabled (default True)
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # CannotChangePassword - Specifies whether the account password can be changed
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cannotchangepassword'),

    # PasswordNeverExpires - Specifies whether the password of an account can expire
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passwordneverexpires'),

    # DomainController - Specifies the Active Directory Domain Services instance to use to perform the task.
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # DomainAdministratorCredential - Specifies the user account credentials to use to perform this task
    Puppet::Resource::Param(Any, 'dsc_domainadministratorcredential'),

    # PasswordAuthentication - Specifies the authentication context type used when testing passwords Valid values are Default, Negotiate.
    Puppet::Resource::Param(Any, 'dsc_passwordauthentication'),

    # DistinguishedName - Returns the X.500 path of the object
    Puppet::Resource::Param(Any, 'dsc_distinguishedname'),

    # The specific backend to use for this `dsc_xaduser`
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
