# This file was automatically generated on 2020-04-10 21:03:42 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerConfiguration resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerConfiguration/MSFT_xSQLServerConfiguration.schema.mof'
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
  'dsc_xsqlserverconfiguration',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # SQLServer - The hostname of the SQL Server to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlserver'),

    # SQLInstanceName - Name of the SQL instance to be configured.
    Puppet::Resource::Param(Any, 'dsc_sqlinstancename'),

    # OptionName - The name of the SQL configuration option to be checked.
    Puppet::Resource::Param(Any, 'dsc_optionname'),

    # OptionValue - The desired value of the SQL configuration option.
    Puppet::Resource::Param(Any, 'dsc_optionvalue'),

    # RestartService - Determines whether the instance should be restarted after updating the configuration option.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartservice'),

    # RestartTimeout - The length of time, in seconds, to wait for the service to restart. Default is 120 seconds.
    Puppet::Resource::Param(Any, 'dsc_restarttimeout'),

    # The specific backend to use for this `dsc_xsqlserverconfiguration`
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
