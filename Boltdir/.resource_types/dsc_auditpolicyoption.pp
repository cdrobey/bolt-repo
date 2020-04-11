# This file was automatically generated on 2020-04-10 21:42:43 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC AuditPolicyOption resource type.
# Automatically generated from
# 'AuditPolicyDsc/DSCResources/MSFT_AuditPolicyOption/MSFT_AuditPolicyOption.schema.mof'
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
  'dsc_auditpolicyoption',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the audit policy option to set. Valid values are CrashOnAuditFail, FullPrivilegeAuditing, AuditBaseObjects, AuditBaseDirectories.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Value - The value to set the audit policy option to. Valid values are Enabled, Disabled.
    Puppet::Resource::Param(Any, 'dsc_value'),

    # The specific backend to use for this `dsc_auditpolicyoption`
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
