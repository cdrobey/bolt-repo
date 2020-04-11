# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPHealthAnalyzerRuleState resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPHealthAnalyzerRuleState/MSFT_SPHealthAnalyzerRuleState.schema.mof'
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
  'dsc_sphealthanalyzerrulestate',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the rule exactly as it appears in central admin
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Enabled - Should the rule be enabled?
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # RuleScope - What is the scope of this rule Valid values are All Servers, Any Server.
    Puppet::Resource::Param(Any, 'dsc_rulescope'),

    # Schedule - How often should the rule check Valid values are Hourly, Daily, Weekly, Monthly, OnDemandOnly.
    Puppet::Resource::Param(Any, 'dsc_schedule'),

    # FixAutomatically - Should the rule fix itself automatically
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_fixautomatically'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_sphealthanalyzerrulestate`
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
