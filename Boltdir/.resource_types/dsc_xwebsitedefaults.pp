# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebSiteDefaults resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebSiteDefaults/MSFT_xWebSiteDefaults.schema.mof'
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
  'dsc_xwebsitedefaults',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ApplyTo - Dummy value because we need a key, always 'Machine' Valid values are Machine.
    Puppet::Resource::Param(Any, 'dsc_applyto'),

    # LogFormat - sites/siteDefaults/logFile/logFormat Valid values are W3C, IIS, NCSA, Custom.
    Puppet::Resource::Param(Any, 'dsc_logformat'),

    # LogDirectory - sites/siteDefaults/logFile/directory
    Puppet::Resource::Param(Any, 'dsc_logdirectory'),

    # TraceLogDirectory - sites/siteDefaults/traceFailedRequestsLogging/directory
    Puppet::Resource::Param(Any, 'dsc_tracelogdirectory'),

    # DefaultApplicationPool - sites/applicationDefaults/applicationPool
    Puppet::Resource::Param(Any, 'dsc_defaultapplicationpool'),

    # AllowSubDirConfig - sites/virtualDirectoryDefaults/allowSubDirConfig Valid values are true, false.
    Puppet::Resource::Param(Any, 'dsc_allowsubdirconfig'),

    # The specific backend to use for this `dsc_xwebsitedefaults`
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
