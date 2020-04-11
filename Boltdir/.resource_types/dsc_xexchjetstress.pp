# This file was automatically generated on 2020-04-10 21:03:36 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchJetstress resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchJetstress/MSFT_xExchJetstress.schema.mof'
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
  'dsc_xexchjetstress',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Type - Specifies the Type which was defined in the JetstressConfig.xml file. Valid values are Performance, Stress, DatabaseBackup, or SoftRecovery. Defaults to Performance. Valid values are Performance, Stress, DatabaseBackup, SoftRecovery.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # JetstressPath - The path to the folder where Jetstress is installed, and which contains JetstressCmd.exe
    Puppet::Resource::Param(Any, 'dsc_jetstresspath'),

    # JetstressParams - Command line parameters to pass into JetstressCmd.exe
    Puppet::Resource::Param(Any, 'dsc_jetstressparams'),

    # MaxWaitMinutes - The maximum amount of time that the Scheduled Task which runs Jetstress can execute for. Defaults to 0, which means there is no time limit.
    Puppet::Resource::Param(Any, 'dsc_maxwaitminutes'),

    # MinAchievedIOPS - The minimum value reported in the Achieved Transactional I/O per Second section of the Jetstress report for the run to be considered successful. Defaults to 0.
    Puppet::Resource::Param(Any, 'dsc_minachievediops'),

    # The specific backend to use for this `dsc_xexchjetstress`
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
