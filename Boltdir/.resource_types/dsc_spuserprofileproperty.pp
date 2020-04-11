# This file was automatically generated on 2020-04-10 21:03:29 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPUserProfileProperty resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPUserProfileProperty/MSFT_SPUserProfileProperty.schema.mof'
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
  'dsc_spuserprofileproperty',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The internal name of the user profile property
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Present if the property should exist, absent if it should be removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # UserProfileService - The name of the user profile service application
    Puppet::Resource::Param(Any, 'dsc_userprofileservice'),

    # DisplayName - The display name of the property
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Type - The type of the property Valid values are BigInteger, Binary, Boolean, Date, DateNoYear, DateTime, Email, Float, Guid, HTML, Integer, Person, String, StringMultiValue, TimeZone, URL.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # Description - The description of the property
    Puppet::Resource::Param(Any, 'dsc_description'),

    # PolicySetting - The policy setting to apply to the property Valid values are Mandatory, Optin, Optout, Disabled.
    Puppet::Resource::Param(Any, 'dsc_policysetting'),

    # PrivacySetting - The privacy setting for the property Valid values are Public, Contacts, Organization, Manager, Private.
    Puppet::Resource::Param(Any, 'dsc_privacysetting'),

    # MappingConnectionName - The name of the UPS connect to map this property to
    Puppet::Resource::Param(Any, 'dsc_mappingconnectionname'),

    # MappingPropertyName - The name of the property from the UPS connection to map to
    Puppet::Resource::Param(Any, 'dsc_mappingpropertyname'),

    # MappingDirection - The direction of the mapping, either Import or Export
    Puppet::Resource::Param(Any, 'dsc_mappingdirection'),

    # Length - The length of the field
    Puppet::Resource::Param(Any, 'dsc_length'),

    # DisplayOrder - The display order to put the property in to the list at
    Puppet::Resource::Param(Any, 'dsc_displayorder'),

    # IsEventLog - Is this field used for event logging
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_iseventlog'),

    # IsVisibleOnEditor - Is this field visible when editing a users profile, or hidden from editing
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isvisibleoneditor'),

    # IsVisibleOnViewer - Is this field visible when viewing a users profile
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isvisibleonviewer'),

    # IsUserEditable - Is this field able to be edited by a user, or only an administrator
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isusereditable'),

    # IsAlias - Is this field an alias that can be used to refer to a user by
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_isalias'),

    # IsSearchable - Is this field able to be searched upon
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_issearchable'),

    # UserOverridePrivacy - Can users override the default privacy policy
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_useroverrideprivacy'),

    # TermStore - The name of the term store to look up managed terms from
    Puppet::Resource::Param(Any, 'dsc_termstore'),

    # TermGroup - The name of the term store group that terms are in for this field
    Puppet::Resource::Param(Any, 'dsc_termgroup'),

    # TermSet - The name of the term set to allow values to be selected from
    Puppet::Resource::Param(Any, 'dsc_termset'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spuserprofileproperty`
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
