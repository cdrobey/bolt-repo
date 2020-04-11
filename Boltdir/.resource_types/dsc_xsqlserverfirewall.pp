# This file was automatically generated on 2020-04-10 21:03:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSQLServerFirewall resource type.
# Automatically generated from
# 'xSQLServer/DSCResources/MSFT_xSQLServerFirewall/MSFT_xSQLServerFirewall.schema.mof'
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
  'dsc_xsqlserverfirewall',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if the SQL firewall rules are is expected to be enabled on the machine.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SourcePath - UNC path to the root of the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # Features - SQL features to enable firewall rules for.
    Puppet::Resource::Param(Any, 'dsc_features'),

    # InstanceName - SQL instance to enable firewall rules for.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # DatabaseEngineFirewall - Is the firewall rule for the Database Engine enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_databaseenginefirewall'),

    # BrowserFirewall - Is the firewall rule for the Browser enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_browserfirewall'),

    # ReportingServicesFirewall - Is the firewall rule for Reporting Services enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_reportingservicesfirewall'),

    # AnalysisServicesFirewall - Is the firewall rule for Analysis Services enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_analysisservicesfirewall'),

    # IntegrationServicesFirewall - Is the firewall rule for the Integration Services enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_integrationservicesfirewall'),

    # SourceCredential - Credentials used to access the path set in the parameter 'SourcePath'.
    Puppet::Resource::Param(Any, 'dsc_sourcecredential'),

    # The specific backend to use for this `dsc_xsqlserverfirewall`
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
