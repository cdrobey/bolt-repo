# This file was automatically generated on 2020-04-10 21:03:30 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC UserRightsAssignment resource type.
# Automatically generated from
# 'SecurityPolicyDsc/DSCResources/MSFT_UserRightsAssignment/MSFT_UserRightsAssignment.schema.mof'
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
  'dsc_userrightsassignment',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Policy - The policy name of the user rights assignment to be configured. Valid values are Create_a_token_object, Access_this_computer_from_the_network, Change_the_system_time, Deny_log_on_as_a_batch_job, Deny_log_on_through_Remote_Desktop_Services, Create_global_objects, Remove_computer_from_docking_station, Deny_access_to_this_computer_from_the_network, Act_as_part_of_the_operating_system, Modify_firmware_environment_values, Deny_log_on_locally, Access_Credential_Manager_as_a_trusted_caller, Restore_files_and_directories, Change_the_time_zone, Replace_a_process_level_token, Manage_auditing_and_security_log, Create_symbolic_links, Modify_an_object_label, Enable_computer_and_user_accounts_to_be_trusted_for_delegation, Generate_security_audits, Increase_a_process_working_set, Take_ownership_of_files_or_other_objects, Bypass_traverse_checking, Log_on_as_a_service, Shut_down_the_system, Lock_pages_in_memory, Impersonate_a_client_after_authentication, Profile_system_performance, Debug_programs, Profile_single_process, Allow_log_on_through_Remote_Desktop_Services, Allow_log_on_locally, Increase_scheduling_priority, Synchronize_directory_service_data, Add_workstations_to_domain, Adjust_memory_quotas_for_a_process, Obtain_an_impersonation_token_for_another_user_in_the_same_session, Perform_volume_maintenance_tasks, Load_and_unload_device_drivers, Force_shutdown_from_a_remote_system, Back_up_files_and_directories, Create_a_pagefile, Deny_log_on_as_a_service, Log_on_as_a_batch_job, Create_permanent_shared_objects.
    Puppet::Resource::Param(Any, 'dsc_policy'),

    # Identity - The identity of the user or group to be added or removed from the user rights assignment.
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Force - Specifies whether to Force the change
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # Ensure - Desired state of resource. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_userrightsassignment`
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
