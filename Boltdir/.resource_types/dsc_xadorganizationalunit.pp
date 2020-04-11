# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xADOrganizationalUnit resource type.
# Automatically generated from
# 'xActiveDirectory/DSCResources/MSFT_xADOrganizationalUnit/MSFT_xADOrganizationalUnit.schema.mof'
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
  'dsc_xadorganizationalunit',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of OU
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Path - Specifies the X500 path of the OU or container where the new object is created
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Credential - The credential to be used to perform the operation on Active Directory
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # ProtectedFromAccidentalDeletion - Defaults to True
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_protectedfromaccidentaldeletion'),

    # Description - The description of the OU
    Puppet::Resource::Param(Any, 'dsc_description'),

    # The specific backend to use for this `dsc_xadorganizationalunit`
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
