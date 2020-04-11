# This file was automatically generated on 2020-04-10 21:03:40 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xScheduledTask resource type.
# Automatically generated from
# 'xComputerManagement/DSCResources/MSFT_xScheduledTask/MSFT_xScheduledTask.schema.mof'
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
  'dsc_xscheduledtask',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # TaskName - The name of the task
    Puppet::Resource::Param(Any, 'dsc_taskname'),

    # TaskPath - The path to the task - defaults to the root directory
    Puppet::Resource::Param(Any, 'dsc_taskpath'),

    # Description - The task description
    Puppet::Resource::Param(Any, 'dsc_description'),

    # ActionExecutable - The path to the .exe for this task
    Puppet::Resource::Param(Any, 'dsc_actionexecutable'),

    # ActionArguments - The arguments to pass the executable
    Puppet::Resource::Param(Any, 'dsc_actionarguments'),

    # ActionWorkingPath - The working path to specify for the executable
    Puppet::Resource::Param(Any, 'dsc_actionworkingpath'),

    # ScheduleType - When should the task be executed Valid values are Once, Daily, Weekly, AtStartup, AtLogOn.
    Puppet::Resource::Param(Any, 'dsc_scheduletype'),

    # RepeatInterval - How many units (minutes, hours, days) between each run of this task?
    Puppet::Resource::Param(Any, 'dsc_repeatinterval'),

    # StartTime - The time of day this task should start at - defaults to 12:00 AM. Not valid for AtLogon and AtStartup tasks
    Puppet::Resource::Param(Any, 'dsc_starttime'),

    # Ensure - Present if the task should exist, Absent if it should be removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Enable - True if the task should be enabled, false if it should be disabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enable'),

    # ExecuteAsCredential - The credential this task should execute as. If not specified defaults to running as the local system account
    Puppet::Resource::Param(Any, 'dsc_executeascredential'),

    # DaysInterval - Specifies the interval between the days in the schedule. An interval of 1 produces a daily schedule. An interval of 2 produces an every-other day schedule.
    Puppet::Resource::Param(Any, 'dsc_daysinterval'),

    # RandomDelay - Specifies a random amount of time to delay the start time of the trigger. The delay time is a random time between the time the task triggers and the time that you specify in this setting.
    Puppet::Resource::Param(Any, 'dsc_randomdelay'),

    # RepetitionDuration - Specifies how long the repetition pattern repeats after the task starts.
    Puppet::Resource::Param(Any, 'dsc_repetitionduration'),

    # DaysOfWeek - Specifies an array of the days of the week on which Task Scheduler runs the task.
    Puppet::Resource::Param(Any, 'dsc_daysofweek'),

    # WeeksInterval - Specifies the interval between the weeks in the schedule. An interval of 1 produces a weekly schedule. An interval of 2 produces an every-other week schedule.
    Puppet::Resource::Param(Any, 'dsc_weeksinterval'),

    # User - Specifies the identifier of the user for a trigger that starts a task when a user logs on.
    Puppet::Resource::Param(Any, 'dsc_user'),

    # DisallowDemandStart - Indicates whether the task is prohibited to run on demand or not. Defaults to $false
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disallowdemandstart'),

    # DisallowHardTerminate - Indicates whether the task is prohibited to be terminated or not. Defaults to $false
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disallowhardterminate'),

    # Compatibility - The task compatibility level. Defaults to Vista. Valid values are AT, V1, Vista, Win7, Win8.
    Puppet::Resource::Param(Any, 'dsc_compatibility'),

    # AllowStartIfOnBatteries - Indicates whether the task should start if the machine is on batteries or not. Defaults to $false
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowstartifonbatteries'),

    # Hidden - Indicates that the task is hidden in the Task Scheduler UI.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_hidden'),

    # RunOnlyIfIdle - Indicates that Task Scheduler runs the task only when the computer is idle.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_runonlyifidle'),

    # IdleWaitTimeout - Specifies the amount of time that Task Scheduler waits for an idle condition to occur.
    Puppet::Resource::Param(Any, 'dsc_idlewaittimeout'),

    # NetworkName - Specifies the name of a network profile that Task Scheduler uses to determine if the task can run. The Task Scheduler UI uses this setting for display purposes. Specify a network name if you specify the RunOnlyIfNetworkAvailable parameter.
    Puppet::Resource::Param(Any, 'dsc_networkname'),

    # DisallowStartOnRemoteAppSession - Indicates that the task does not start if the task is triggered to run in a Remote Applications Integrated Locally (RAIL) session.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_disallowstartonremoteappsession'),

    # StartWhenAvailable - Indicates that Task Scheduler can start the task at any time after its scheduled time has passed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_startwhenavailable'),

    # DontStopIfGoingOnBatteries - Indicates that the task does not stop if the computer switches to battery power.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dontstopifgoingonbatteries'),

    # WakeToRun - Indicates that Task Scheduler wakes the computer before it runs the task.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_waketorun'),

    # IdleDuration - Specifies the amount of time that the computer must be in an idle state before Task Scheduler runs the task.
    Puppet::Resource::Param(Any, 'dsc_idleduration'),

    # RestartOnIdle - Indicates that Task Scheduler restarts the task when the computer cycles into an idle condition more than once.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_restartonidle'),

    # DontStopOnIdleEnd - Indicates that Task Scheduler does not terminate the task if the idle condition ends before the task is completed.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_dontstoponidleend'),

    # ExecutionTimeLimit - Specifies the amount of time that Task Scheduler is allowed to complete the task.
    Puppet::Resource::Param(Any, 'dsc_executiontimelimit'),

    # MultipleInstances - Specifies the policy that defines how Task Scheduler handles multiple instances of the task. Valid values are IgnoreNew, Parallel, Queue.
    Puppet::Resource::Param(Any, 'dsc_multipleinstances'),

    # Priority - Specifies the priority level of the task. Priority must be an integer from 0 (highest priority) to 10 (lowest priority). The default value is 7. Priority levels 7 and 8 are used for background tasks. Priority levels 4, 5, and 6 are used for interactive tasks.
    Puppet::Resource::Param(Any, 'dsc_priority'),

    # RestartCount - Specifies the number of times that Task Scheduler attempts to restart the task.
    Puppet::Resource::Param(Any, 'dsc_restartcount'),

    # RestartInterval - Specifies the amount of time that Task Scheduler attempts to restart the task.
    Puppet::Resource::Param(Any, 'dsc_restartinterval'),

    # RunOnlyIfNetworkAvailable - Indicates that Task Scheduler runs the task only when a network is available. Task Scheduler uses the NetworkID parameter and NetworkName parameter that you specify in this cmdlet to determine if the network is available.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_runonlyifnetworkavailable'),

    # The specific backend to use for this `dsc_xscheduledtask`
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
