# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPPowerPointAutomationServiceApp resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPPowerPointAutomationServiceApp/MSFT_SPPowerPointAutomationServiceApp.schema.mof'
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
  'dsc_sppowerpointautomationserviceapp',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the service application
    Puppet::Resource::Param(Any, 'dsc_name'),

    # ProxyName - The name of the service application proxy
    Puppet::Resource::Param(Any, 'dsc_proxyname'),

    # ApplicationPool - The name of the application pool to run the service app in
    Puppet::Resource::Param(Any, 'dsc_applicationpool'),

    # CacheExpirationPeriodInSeconds - Specifies the maximum time, in seconds, that items remain in the back-end server cache. The default value is 600 seconds (10 minutes).
    Puppet::Resource::Param(Any, 'dsc_cacheexpirationperiodinseconds'),

    # MaximumConversionsPerWorker - Specifies the maximum number of presentations that a conversion worker process can convert before recycling. The default value is 5.
    Puppet::Resource::Param(Any, 'dsc_maximumconversionsperworker'),

    # WorkerKeepAliveTimeoutInSeconds - Specifies the maximum time, in seconds, that a conversion worker process can be unresponsive before being terminated. The default value is 120 seconds.
    Puppet::Resource::Param(Any, 'dsc_workerkeepalivetimeoutinseconds'),

    # WorkerProcessCount - Specifies the number of active instances of the conversion worker process on each back-end. This value must be less than the Windows Communication Foundation (WCF) connection limit for this computer. The default value is 3.
    Puppet::Resource::Param(Any, 'dsc_workerprocesscount'),

    # WorkerTimeoutInSeconds - Specifies the maximum time, in seconds, that a conversion worker process is given for any single conversion. The default is 300 seconds (5 minutes).
    Puppet::Resource::Param(Any, 'dsc_workertimeoutinseconds'),

    # Ensure - Ensure the crawl rule is Present or Absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run thsi resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_sppowerpointautomationserviceapp`
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
