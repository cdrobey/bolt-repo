# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWaitForSqlHAGroup resource type.
# Automatically generated from
# 'xSqlPs/DSCResources/MSFT_xWaitForSqlHAGroup/MSFT_xWaitForSqlHAGroup.schema.mof'
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
  'dsc_xwaitforsqlhagroup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of Sql High Availability group
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ClusterName - The name of windows failover cluster for the availability group.
    Puppet::Resource::Param(Any, 'dsc_clustername'),

    # RetryIntervalSec - Interval to check the HA group existency
    Puppet::Resource::Param(Any, 'dsc_retryintervalsec'),

    # RetryCount - Maximum number of retries to check HA group existency
    Puppet::Resource::Param(Any, 'dsc_retrycount'),

    # InstanceName - The name of sql instance.
    Puppet::Resource::Param(Any, 'dsc_instancename'),

    # DomainCredential - Domain credential could get list of cluster nodes.
    Puppet::Resource::Param(Any, 'dsc_domaincredential'),

    # SqlAdministratorCredential - Sql sa credential
    Puppet::Resource::Param(Any, 'dsc_sqladministratorcredential'),

    # The specific backend to use for this `dsc_xwaitforsqlhagroup`
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
