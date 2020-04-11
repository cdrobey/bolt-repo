# This file was automatically generated on 2020-04-10 21:03:51 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manage an IIS application pool.
Puppet::Resource::ResourceType3.new(
  'iis_application_pool',
  [
    # Specifies whether an application pool should be present or absent. If `state` is
    # not specified, the application pool will be created and left in the default started state.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The state of the ApplicationPool. By default, a newly created application pool will be started
    # 
    # Valid values are `started` (also called `Started`), `stopped` (also called `Stopped`).
    Puppet::Resource::Param(Enum['started', 'Started', 'stopped', 'Stopped'], 'state'),

    # When true, indicates to the World Wide Web Publishing Service (W3SVC) that the application pool should be automatically started when it is created or when IIS is started.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'auto_start'),

    # Specifies the .NET configuration file for the application pool
    Puppet::Resource::Param(Any, 'clr_config_file'),

    # When true, enables a 32-bit application to run on a computer that runs a 64-bit version of Windows
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'enable32_bit_app_on_win64'),

    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'enable_configuration_override'),

    # Specifies the request-processing mode that is used to process requests for managed content. First letter has to be capitalized.
    # 
    # Valid values are `Integrated`, `Classic`.
    Puppet::Resource::Param(Enum['Integrated', 'Classic'], 'managed_pipeline_mode'),

    # Specifies the managed loader to use for pre-loading the the application pool
    Puppet::Resource::Param(Any, 'managed_runtime_loader'),

    # Specifies the .NET Framework version to be used by the application pool
    # 
    # Valid values are `""`, `v1.1`, `v2.0`, `v4.0`.
    Puppet::Resource::Param(Enum['""', 'v1.1', 'v2.0', 'v4.0'], 'managed_runtime_version'),

    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'pass_anonymous_token'),

    # Specifies the startup type for the application pool
    # 
    # Valid values are `OnDemand`, `AlwaysRunning`.
    Puppet::Resource::Param(Enum['OnDemand', 'AlwaysRunning'], 'start_mode'),

    # Indicates to HTTP.sys how many requests to queue for an application pool before rejecting future requests.
    # When the value set for this property is exceeded, IIS rejects subsequent requests with a 503 error.
    # If the loadBalancerCapabilities setting is true, the connection is closed instead of rejecting requests
    # with a 503. For more information about loadBalancerCapabilities, see
    # https://www.iis.net/configreference/system.applicationhost/applicationPools/add/failure
    Puppet::Resource::Param(Any, 'queue_length'),

    # Configures the action that IIS takes when a worker process exceeds its configured CPU limit.
    # The action attribute is configured on a per-application pool basis
    # 
    # Valid values are `NoAction`, `KillW3wp`, `Throttle`, `ThrottleUnderLoad`.
    Puppet::Resource::Param(Enum['NoAction', 'KillW3wp', 'Throttle', 'ThrottleUnderLoad'], 'cpu_action'),

    # Configures the maximum percentage of CPU time (in 1/1000ths of one percent) that the worker processes
    # in an application pool are allowed to consume over a period of time as indicated by the resetInterval
    # attribute. If the limit set by the limit attribute is exceeded, an event is written to the event log
    # and an optional set of events can be triggered. These optional events are determined by the action attribute.
    Puppet::Resource::Param(Any, 'cpu_limit'),

    # Specifies the reset period (in minutes) for CPU monitoring and throttling limits on an application pool.
    # When the number of minutes elapsed since the last process accounting reset equals the number specified by
    # this property, IIS resets the CPU timers for both the logging and limit intervals.
    # 
    # Important: The resetInterval value must be greater than the time between logging operations,
    # otherwise IIS will reset counters before logging has occurred, and process accounting will not occur.
    # 
    # Note: Because process accounting in IIS uses Windows job objects to monitor CPU times for the whole process,
    # process accounting will only log and throttle applications that are isolated in a separate process from IIS.
    Puppet::Resource::Param(Any, 'cpu_reset_interval'),

    # Specifies whether a particular worker process assigned to an application pool should also be assigned
    # to a given CPU. This property is used together with the `smpProcessorAffinityMask` and
    # `smpProcessorAffinityMask2` attributes.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'cpu_smp_affinitized'),

    # Specifies the hexadecimal processor mask for multi-processor computers, which indicates to which CPU
    # the worker processes in an application pool should be bound. Before this property takes effect, the smpAffinitized
    # attribute must be set to true for the application pool.
    # 
    # Note: On 64-bit computers, the smpProcessorAffinityMask attribute contains the low-order DWORD for the processor mask,
    # and the smpProcessorAffinityMask2 attribute contains the high-order DWORD for the processor mask. On 32-bit computers,
    # the smpProcessorAffinityMask2 attribute has no effect.
    # 
    # If you set the value to 1 (which corresponds to 00000000000000001 in binary), the worker processes in
    # an application pool run on only the first processor. If you set the value to 2 (which corresponds to 0000000000000010
    # in binary), the worker processes run on only the second processor. If you set the value to 3 (which corresponds
    # to 0000000000000011 in binary) the worker processes run on both the first and second processors.
    # 
    # Note: Do not set this property to 0. Doing so disables symmetric multiprocessing (SMP) affinity and
    # creates an error condition. This means that processes running on one CPU will not remain affiliated with that CPU
    # throughout their lifetime.
    Puppet::Resource::Param(Any, 'cpu_smp_processor_affinity_mask'),

    # Specifies the high-order DWORD hexadecimal processor mask for 64-bit multi-processor computers,
    # which indicates to which CPU the worker processes in an application pool should be bound.
    # Before this property takes effect, the smpAffinitized attribute must be set to true for the application pool.
    # 
    # Note: On 64-bit computers, the smpProcessorAffinityMask attribute contains the low-order DWORD
    # for the processor mask, and the smpProcessorAffinityMask2 attribute contains the high-order DWORD
    # for the processor mask. On 32-bit computers, the smpProcessorAffinityMask2 attribute has no effect.
    Puppet::Resource::Param(Any, 'cpu_smp_processor_affinity_mask2'),

    # Specifies the account identity under which the application pool runs.
    # Note: Starting in IIS 7.5 the default value is ApplicationPoolIdentity.
    # (In IIS 7.0 the default value was NetworkService.)
    # 
    # Valid values are `ApplicationPoolIdentity`, `LocalService`, `LocalSystem`, `NetworkService`, `SpecificUser`.
    Puppet::Resource::Param(Enum['ApplicationPoolIdentity', 'LocalService', 'LocalSystem', 'NetworkService', 'SpecificUser'], 'identity_type'),

    # Specifies how long (in minutes) a worker process should run idle if no new requests are received
    # and the worker process is not processing requests. After the allocated time passes, the worker process
    # should request that it be shut down by the WWW service.
    Puppet::Resource::Param(Any, 'idle_timeout'),

    # Specifies the action to perform when the idle timeout duration has been reached. Before IIS 8.5,
    # a worker process that was idle for the duration of the idleTimeout attribute would be terminated.
    # After IIS 8.5, you have the choice of terminating a worker process that reaches the idleTimeout limit,
    # or suspending it by moving it from memory to disk. Suspending a process will likely take less time and
    # consume less memory than terminating it.
    # You can configure an idle timeout action of suspend with the fake request of application initialization
    # (see applicationInitialization.
    # 
    # Valid values are `Terminate`, `Suspend`.
    Puppet::Resource::Param(Enum['Terminate', 'Suspend'], 'idle_timeout_action'),

    # Specifies whether IIS loads the user profile for the application pool identity. Setting this value to
    # false causes IIS to revert to IIS 6.0 behavior. IIS 6.0 does not load the user profile for an
    # application pool identity.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'load_user_profile'),

    # Specifies which action taken in the process gets logged to the Event Viewer. In IIS 8.0,
    # the only action that applies is the idle timeout action, in which the process is terminated because
    # it was idle for the idleTimeout period.
    Puppet::Resource::Param(Any, 'log_event_on_process_model'),

    # Specifies the logon type for the process identity.
    # (For additional information about logon types, see the LogonUser Function
    # topic on Microsoft's MSDN Web site.)
    # 
    # Valid values are `LogonBatch`, `LogonService`.
    Puppet::Resource::Param(Enum['LogonBatch', 'LogonService'], 'logon_type'),

    # Specifies whether the IIS_IUSRS group Security Identifier (SID) is added to the worker process token. When false, IIS automatically uses an application pool identity as though it were a member of the built-in IIS_IUSRS group, which has access to necessary file and system resources. When true, an application pool identity must be explicitly added to all resources that a worker process requires at runtime.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'manual_group_membership'),

    # Indicates the maximum number of worker processes that would be used for the application pool.
    # A value of '1' indicates a maximum of a single worker process for the application pool. This would be the setting on a server that does not have NUMA nodes.
    # A value of '2' or more indicates a Web garden that uses multiple worker processes for an application pool (if necessary).
    # A value of '0' specifies that IIS runs the same number of worker processes as there are Non-Uniform Memory Access (NUMA) nodes. IIS identifies the number of NUMA nodes that are available on the hardware and starts the same number of worker processes. For example, if you have four NUMA nodes, it will use a maximum of four worker processes for that application pool. In this example, setting maxProcesses to a value of '0' or '4' would have the same result.
    Puppet::Resource::Param(Any, 'max_processes'),

    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'pinging_enabled'),

    # Specifies the time between health-monitoring pings that the WWW service sends to a worker process
    Puppet::Resource::Param(Any, 'ping_interval'),

    # Specifies the time that a worker process is given to respond to a health-monitoring ping.
    # After the time limit is exceeded, the WWW service terminates the worker process.
    Puppet::Resource::Param(Any, 'ping_response_time'),

    # When setProfileEnvironment is set to True, WAS creates an environment block to pass to CreateProcessAsUser when creating a worker process. This ensures that the environment is set based on the user profile for the new process.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'set_profile_environment'),

    # Specifies the time that the W3SVC service waits after it initiated a recycle. If the worker process does not shut down within the shutdownTimeLimit, it will be terminated by the W3SVC service.
    Puppet::Resource::Param(Any, 'shutdown_time_limit'),

    # Specifies the time that IIS waits for an application pool to start. If the application pool does not startup within the startupTimeLimit, the worker process is terminated and the rapid-fail protection count is incremented.
    Puppet::Resource::Param(Any, 'startup_time_limit'),

    # Specifies the identity under which the application pool runs when the identityType is `SpecificUser`
    Puppet::Resource::Param(Any, 'user_name'),

    # Specifies the password associated with the userName attribute. This attribute is only necessary when the value of `identity_type` is `SpecificUser`.
    # Note: To avoid storing unencrypted password strings in configuration files, this uses AppCmd.exe. This encrypts the password automatically before it is written to the XML configuration files. This provides better password security than storing unencrypted passwords.
    Puppet::Resource::Param(Any, 'password'),

    Puppet::Resource::Param(Any, 'orphan_action_exe'),

    Puppet::Resource::Param(Any, 'orphan_action_params'),

    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'orphan_worker_process'),

    # Valid values are `HttpLevel`, `TcpLevel`.
    Puppet::Resource::Param(Enum['HttpLevel', 'TcpLevel'], 'load_balancer_capabilities'),

    Puppet::Resource::Param(Any, 'rapid_fail_protection'),

    Puppet::Resource::Param(Any, 'rapid_fail_protection_interval'),

    Puppet::Resource::Param(Any, 'rapid_fail_protection_max_crashes'),

    Puppet::Resource::Param(Any, 'auto_shutdown_exe'),

    Puppet::Resource::Param(Any, 'auto_shutdown_params'),

    # Specifies whether the WWW Service should start another worker process to replace the existing worker process while that process is shutting down. The value of this property should be set to true if the worker process loads any application code that does not support multiple worker processes.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'disallow_overlapping_rotation'),

    # Specifies whether the WWW Service should rotate worker processes in an application pool when the configuration has changed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'disallow_rotation_on_config_change'),

    # Specifies that IIS should log an event when an application pool is recycled. The logEventOnRecycle property must have a bit set corresponding to the reason for the recycle if IIS is to log the event.
    # The logEventOnRecycle attribute can have one or more of the following possible values. If you specify more than one value, separate them with a comma (,). The default flags for versions of IIS earlier than IIS 10 are Time, Memory, and PrivateMemory; for IIS 10 and later are Time, Requests, Schedule, Memory, IsapiUnhealthy, OnDemand, ConfigChange, and PrivateMemory;
    Puppet::Resource::Param(Any, 'log_event_on_recycle'),

    # Specifies the amount of virtual memory (in kilobytes) that a worker process can use before the worker process is recycled. The maximum value supported for this property is 4,294,967 KB
    Puppet::Resource::Param(Any, 'restart_memory_limit'),

    # Specifies the amount of private memory (in kilobytes) that a worker process can use before the worker process recycles. The maximum value supported for this property is 4,294,967 KB
    Puppet::Resource::Param(Any, 'restart_private_memory_limit'),

    # Specifies that the worker process should be recycled after it processes a specific number of requests.
    Puppet::Resource::Param(Any, 'restart_requests_limit'),

    # Specifies that the worker process should be recycled after a specified amount of time has elapsed.
    Puppet::Resource::Param(Any, 'restart_time_limit'),

    # Specifies the specific times in a 24-hour period that the worker process should be recycled.
    Puppet::Resource::Param(Any, 'restart_schedule')
  ],
  [
    # The unique name of the ApplicationPool.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `iis_application_pool`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # webadministration
    # : IIS Application Pool provider using the PowerShell WebAdministration module
    # 
    #   * Required binaries: `powershell.exe`.
    #   * Default for `operatingsystem` == `windows`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
