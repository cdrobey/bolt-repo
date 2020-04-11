# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSqlAlias resource type.
# Automatically generated from
# 'xSqlPs/DSCResources/MSFT_xSqlAlias/MSFT_xSqlAlias.schema.mof'
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
  'dsc_xsqlalias',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Protocol - Valid values are TCP, NP.
    Puppet::Resource::Param(Any, 'dsc_protocol'),

    # ServerName
    Puppet::Resource::Param(Any, 'dsc_servername'),

    # TCPPort
    Puppet::Resource::Param(Any, 'dsc_tcpport'),

    # PipeName
    Puppet::Resource::Param(Any, 'dsc_pipename'),

    # Ensure - Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xsqlalias`
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
