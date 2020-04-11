# This file was automatically generated on 2020-04-10 21:03:45 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebAppPool resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebAppPool/MSFT_xWebAppPool.schema.mof'
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
  'dsc_xwebapppool',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Indicates the application pool name. The value must contain between 1 and 64 characters.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Indicates if the application pool exists. Set this property to Absent to ensure that the application pool does not exist. Setting it to Present (the default value) ensures that the application pool exists. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # State - Indicates the state of the application pool. The values that are allowed for this property are: Started, Stopped. Valid values are Started, Stopped.
    Puppet::Resource::Param(Any, 'dsc_state'),

    # autoStart - When set to true, indicates to the World Wide Web Publishing Service (W3SVC) that the application pool should be automatically started when it is created or when IIS is started.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autostart'),

    # CLRConfigFile - Indicates the .NET configuration file for the application pool.
    Puppet::Resource::Param(Any, 'dsc_clrconfigfile'),

    # enable32BitAppOnWin64 - When set to true, enables a 32-bit application to run on a computer that runs a 64-bit version of Windows.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enable32bitapponwin64'),

    # enableConfigurationOverride - When set to true, indicates that delegated settings in Web.config files will processed for applications within this application pool. When set to false, all settings in Web.config files will be ignored for this application pool.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enableconfigurationoverride'),

    # managedPipelineMode - Indicates the request-processing mode that is used to process requests for managed content. The values that are allowed for this property are: Integrated, Classic. Valid values are Integrated, Classic.
    Puppet::Resource::Param(Any, 'dsc_managedpipelinemode'),

    # managedRuntimeLoader - Indicates the managed loader to use for pre-loading the application pool.
    Puppet::Resource::Param(Any, 'dsc_managedruntimeloader'),

    # managedRuntimeVersion - Indicates the CLR version to be used by the application pool. The values that are allowed for this property are: v4.0, v2.0, and ''. Valid values are v4.0, v2.0, .
    Puppet::Resource::Param(Any, 'dsc_managedruntimeversion'),

    # passAnonymousToken - When set to true, the Windows Process Activation Service (WAS) creates and passes a token for the built-in IUSR anonymous user account to the Anonymous authentication module. The Anonymous authentication module uses the token to impersonate the built-in account. When this property is set to false, the token will not be passed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passanonymoustoken'),

    # startMode - Indicates the startup type for the application pool. The values that are allowed for this property are: OnDemand, AlwaysRunning. Valid values are OnDemand, AlwaysRunning.
    Puppet::Resource::Param(Any, 'dsc_startmode'),

    # queueLength - Indicates the maximum number of requests that HTTP.sys will queue for the application pool. The value must be a valid integer between 10 and 65535.
    Puppet::Resource::Param(Any, 'dsc_queuelength'),

    # cpuAction - Configures the action that IIS takes when a worker process exceeds its configured CPU limit. The values that are allowed for this property are: NoAction, KillW3wp, Throttle, and ThrottleUnderLoad. Valid values are NoAction, KillW3wp, Throttle, ThrottleUnderLoad.
    Puppet::Resource::Param(Any, 'dsc_cpuaction'),

    # cpuLimit - Configures the maximum percentage of CPU time (in 1/1000ths of one percent) that the worker processes in the application pool are allowed to consume over a period of time as indicated by the cpuResetInterval property. The value must be a valid integer between 0 and 100000.
    Puppet::Resource::Param(Any, 'dsc_cpulimit'),

    # cpuResetInterval - Indicates the reset period (in minutes) for CPU monitoring and throttling limits on the application pool. The value must be a string representation of a TimeSpan value. The valid range (in minutes) is 0 to 1440. Setting the value of this property to 0 disables CPU monitoring.
    Puppet::Resource::Param(Any, 'dsc_cpuresetinterval'),

    # cpuSmpAffinitized - Indicates whether a particular worker process assigned to the application pool should also be assigned to a given CPU.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_cpusmpaffinitized'),

    # cpuSmpProcessorAffinityMask - Indicates the hexadecimal processor mask for multi-processor computers, which indicates to which CPU the worker processes in the application pool should be bound. Before this property takes effect, the cpuSmpAffinitized property must be set to true for the application pool. The value must be a valid integer between 0 and 4294967295.
    Puppet::Resource::Param(Any, 'dsc_cpusmpprocessoraffinitymask'),

    # cpuSmpProcessorAffinityMask2 - Indicates the high-order DWORD hexadecimal processor mask for 64-bit multi-processor computers, which indicates to which CPU the worker processes in the application pool should be bound. Before this property takes effect, the cpuSmpAffinitized property must be set to true for the application pool. The value must be a valid integer between 0 and 4294967295.
    Puppet::Resource::Param(Any, 'dsc_cpusmpprocessoraffinitymask2'),

    # identityType - Indicates the account identity under which the application pool runs. The values that are allowed for this property are: ApplicationPoolIdentity, LocalService, LocalSystem, NetworkService, and SpecificUser. Valid values are ApplicationPoolIdentity, LocalService, LocalSystem, NetworkService, SpecificUser.
    Puppet::Resource::Param(Any, 'dsc_identitytype'),

    # Credential - Indicates the custom account crededentials. This property is only valid when the identityType property is set to SpecificUser.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # idleTimeout - Indicates the amount of time (in minutes) a worker process will remain idle before it shuts down. The value must be a string representation of a TimeSpan value and must be less than the restartTimeLimit property value. The valid range (in minutes) is 0 to 43200.
    Puppet::Resource::Param(Any, 'dsc_idletimeout'),

    # idleTimeoutAction - Indicates the action to perform when the idle timeout duration has been reached. The values that are allowed for this property are: Terminate, Suspend. Valid values are Terminate, Suspend.
    Puppet::Resource::Param(Any, 'dsc_idletimeoutaction'),

    # loadUserProfile - Indicates whether IIS loads the user profile for the application pool identity.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_loaduserprofile'),

    # logEventOnProcessModel - Indicates that IIS should generate an event log entry for each occurrence of the specified process model events.
    Puppet::Resource::Param(Any, 'dsc_logeventonprocessmodel'),

    # logonType - Indicates the logon type for the process identity. The values that are allowed for this property are: LogonBatch, LogonService. Valid values are LogonBatch, LogonService.
    Puppet::Resource::Param(Any, 'dsc_logontype'),

    # manualGroupMembership - Indicates whether the IIS_IUSRS group Security Identifier (SID) is added to the worker process token.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_manualgroupmembership'),

    # maxProcesses - Indicates the maximum number of worker processes that would be used for the application pool. The value must be a valid integer between 0 and 2147483647.
    Puppet::Resource::Param(Any, 'dsc_maxprocesses'),

    # pingingEnabled - Indicates whether pinging (health monitoring) is enabled for the worker process(es) serving this application pool.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_pingingenabled'),

    # pingInterval - Indicates the period of time (in seconds) between health monitoring pings sent to the worker process(es) serving this application pool. The value must be a string representation of a TimeSpan value. The valid range (in seconds) is 1 to 4294967.
    Puppet::Resource::Param(Any, 'dsc_pinginterval'),

    # pingResponseTime - Indicates the maximum time (in seconds) that a worker process is given to respond to a health monitoring ping. The value must be a string representation of a TimeSpan value. The valid range (in seconds) is 1 to 4294967.
    Puppet::Resource::Param(Any, 'dsc_pingresponsetime'),

    # setProfileEnvironment - Indicates the environment to be set based on the user profile for the new process.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_setprofileenvironment'),

    # shutdownTimeLimit - Indicates the period of time (in seconds) a worker process is given to finish processing requests and shut down. The value must be a string representation of a TimeSpan value. The valid range (in seconds) is 1 to 4294967.
    Puppet::Resource::Param(Any, 'dsc_shutdowntimelimit'),

    # startupTimeLimit - Indicates the period of time (in seconds) a worker process is given to start up and initialize. The value must be a string representation of a TimeSpan value. The valid range (in seconds) is 1 to 4294967.
    Puppet::Resource::Param(Any, 'dsc_startuptimelimit'),

    # orphanActionExe - Indicates an executable to run when a worker process is orphaned.
    Puppet::Resource::Param(Any, 'dsc_orphanactionexe'),

    # orphanActionParams - Indicates parameters for the executable that is specified in the orphanActionExe property.
    Puppet::Resource::Param(Any, 'dsc_orphanactionparams'),

    # orphanWorkerProcess - Indicates whether to assign a worker process to an orphan state instead of terminating it when the application pool fails. If true, an unresponsive worker process will be orphaned instead of terminated.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_orphanworkerprocess'),

    # loadBalancerCapabilities - Indicates the response behavior of a service when it is unavailable. The values that are allowed for this property are: HttpLevel, TcpLevel. If set to HttpLevel and the application pool is stopped, HTTP.sys will return HTTP 503 error. If set to TcpLevel, HTTP.sys will reset the connection. Valid values are HttpLevel, TcpLevel.
    Puppet::Resource::Param(Any, 'dsc_loadbalancercapabilities'),

    # rapidFailProtection - Indicates whether rapid-fail protection is enabled. If true, the application pool is shut down if there are a specified number of worker process crashes within a specified time period.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_rapidfailprotection'),

    # rapidFailProtectionInterval - Indicates the time interval (in minutes) during which the specified number of worker process crashes must occur before the application pool is shut down by rapid-fail protection. The value must be a string representation of a TimeSpan value. The valid range (in minutes) is 1 to 144000.
    Puppet::Resource::Param(Any, 'dsc_rapidfailprotectioninterval'),

    # rapidFailProtectionMaxCrashes - Indicates the maximum number of worker process crashes permitted before the application pool is shut down by rapid-fail protection. The value must be a valid integer between 0 and 2147483647.
    Puppet::Resource::Param(Any, 'dsc_rapidfailprotectionmaxcrashes'),

    # autoShutdownExe - Indicates an executable to run when the application pool is shut down by rapid-fail protection.
    Puppet::Resource::Param(Any, 'dsc_autoshutdownexe'),

    # autoShutdownParams - Indicates parameters for the executable that is specified in the autoShutdownExe property.
    Puppet::Resource::Param(Any, 'dsc_autoshutdownparams'),

    # disallowOverlappingRotation - Indicates whether the W3SVC service should start another worker process to replace the existing worker process while that process is shutting down. If true, the application pool recycle will happen such that the existing worker process exits before another worker process is created.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disallowoverlappingrotation'),

    # disallowRotationOnConfigChange - Indicates whether the W3SVC service should rotate worker processes in the application pool when the configuration has changed. If true, the application pool will not recycle when its configuration is changed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disallowrotationonconfigchange'),

    # logEventOnRecycle - Indicates that IIS should generate an event log entry for each occurrence of the specified recycling events.
    Puppet::Resource::Param(Any, 'dsc_logeventonrecycle'),

    # restartMemoryLimit - Indicates the maximum amount of virtual memory (in KB) a worker process can consume before causing the application pool to recycle. The value must be a valid integer between 0 and 4294967295. A value of 0 means there is no limit.
    Puppet::Resource::Param(Any, 'dsc_restartmemorylimit'),

    # restartPrivateMemoryLimit - Indicates the maximum amount of private memory (in KB) a worker process can consume before causing the application pool to recycle. The value must be a valid integer between 0 and 4294967295. A value of 0 means there is no limit.
    Puppet::Resource::Param(Any, 'dsc_restartprivatememorylimit'),

    # restartRequestsLimit - Indicates the maximum number of requests the application pool can process before it is recycled. The value must be a valid integer between 0 and 4294967295. A value of 0 means the application pool can process an unlimited number of requests.
    Puppet::Resource::Param(Any, 'dsc_restartrequestslimit'),

    # restartTimeLimit - Indicates the period of time (in minutes) after which the application pool will recycle. The value must be a string representation of a TimeSpan value. The valid range (in minutes) is 0 to 432000. A value of 0 means the application pool does not recycle on a regular interval.
    Puppet::Resource::Param(Any, 'dsc_restarttimelimit'),

    # restartSchedule - Indicates a set of specific local times, in 24 hour format, when the application pool is recycled. The value must be an array of string representations of TimeSpan values. TimeSpan values must be between 00:00:00 and 23:59:59 seconds inclusive, with a granularity of 60 seconds. Setting the value of this property to '' disables the schedule.
    Puppet::Resource::Param(Any, 'dsc_restartschedule'),

    # The specific backend to use for this `dsc_xwebapppool`
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
