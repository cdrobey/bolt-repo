# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchMaintenanceMode resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchMaintenanceMode/MSFT_xExchMaintenanceMode.schema.mof'
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
  'dsc_xexchmaintenancemode',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Enabled - Whether the server should be put into Maintenance Mode. When Enabled is set to True, the server will be put in Maintenance Mode. If False, the server will be taken out of Maintenance Mode.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # Credential - Credentials used to establish a remote Powershell session to Exchange
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AdditionalComponentsToActivate - When taking a server out of Maintenance Mode, the following components will be set to Active by default: ServerWideOffline, UMCallRouter, HighAvailability, Monitoring, RecoveryActionsEnabled. This parameter specifies an additional list of components to set to Active.
    Puppet::Resource::Param(Any, 'dsc_additionalcomponentstoactivate'),

    # DomainController - The DomainController parameter specifies the fully qualified domain name (FQDN) of the domain controller that writes this configuration change to Active Directory.
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # MovePreferredDatabasesBack - Whether to move back databases with an Activation Preference of one for this server after taking the server out of Maintenance Mode. Defaults to False.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_movepreferreddatabasesback'),

    # SetInactiveComponentsFromAnyRequesterToActive - Whether components that were set to Inactive by outside Requesters should also be set to Active when exiting Maintenance Mode. Defaults to False.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_setinactivecomponentsfromanyrequestertoactive'),

    # UpgradedServerVersion - Optional string to specify what the server version will be after applying a Cumulative Update. If the server is already at this version, requests to put the server in Maintenance Mode will be ignored. Version should be in the format ##.#.####.#, as in 15.0.1104.5.
    Puppet::Resource::Param(Any, 'dsc_upgradedserverversion'),

    # The specific backend to use for this `dsc_xexchmaintenancemode`
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
