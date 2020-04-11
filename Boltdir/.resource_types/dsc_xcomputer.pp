# This file was automatically generated on 2020-04-10 21:03:33 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xComputer resource type.
# Automatically generated from
# 'xComputerManagement/DSCResources/MSFT_xComputer/MSFT_xComputer.schema.mof'
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
  'dsc_xcomputer',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # DomainName
    Puppet::Resource::Param(Any, 'dsc_domainname'),

    # JoinOU
    Puppet::Resource::Param(Any, 'dsc_joinou'),

    # CurrentOU
    Puppet::Resource::Param(Any, 'dsc_currentou'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # UnjoinCredential
    Puppet::Resource::Param(Any, 'dsc_unjoincredential'),

    # WorkGroupName
    Puppet::Resource::Param(Any, 'dsc_workgroupname'),

    # The specific backend to use for this `dsc_xcomputer`
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
