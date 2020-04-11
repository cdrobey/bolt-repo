# This file was automatically generated on 2020-04-10 21:42:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPAntivirusSettings resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPAntivirusSettings/MSFT_SPAntivirusSettings.schema.mof'
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
  'dsc_spantivirussettings',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # ScanOnDownload - Should documents be scanned before being downloaded
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_scanondownload'),

    # ScanOnUpload - Should documents be scanned on upload
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_scanonupload'),

    # AllowDownloadInfected - Should documents that are infected be allowed to be downloaded
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowdownloadinfected'),

    # AttemptToClean - Should infected documents be handed to the AV engine to attempt cleaning
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_attempttoclean'),

    # TimeoutDuration - What is the timeout for an AV scan in seconds
    Puppet::Resource::Param(Any, 'dsc_timeoutduration'),

    # NumberOfThreads - How many concurrent threads should the AV engine be able to run on a server
    Puppet::Resource::Param(Any, 'dsc_numberofthreads'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spantivirussettings`
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
