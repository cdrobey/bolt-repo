# This file was automatically generated on 2020-04-10 21:03:35 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchDatabaseAvailabilityGroup resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchDatabaseAvailabilityGroup/MSFT_xExchDatabaseAvailabilityGroup.schema.mof'
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
  'dsc_xexchdatabaseavailabilitygroup',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # AutoDagTotalNumberOfServers
    Puppet::Resource::Param(Any, 'dsc_autodagtotalnumberofservers'),

    # AlternateWitnessDirectory
    Puppet::Resource::Param(Any, 'dsc_alternatewitnessdirectory'),

    # AlternateWitnessServer
    Puppet::Resource::Param(Any, 'dsc_alternatewitnessserver'),

    # AutoDagAutoRedistributeEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autodagautoredistributeenabled'),

    # AutoDagAutoReseedEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autodagautoreseedenabled'),

    # AutoDagDatabaseCopiesPerDatabase
    Puppet::Resource::Param(Any, 'dsc_autodagdatabasecopiesperdatabase'),

    # AutoDagDatabaseCopiesPerVolume
    Puppet::Resource::Param(Any, 'dsc_autodagdatabasecopiespervolume'),

    # AutoDagDatabasesRootFolderPath
    Puppet::Resource::Param(Any, 'dsc_autodagdatabasesrootfolderpath'),

    # AutoDagDiskReclaimerEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_autodagdiskreclaimerenabled'),

    # AutoDagTotalNumberOfDatabases
    Puppet::Resource::Param(Any, 'dsc_autodagtotalnumberofdatabases'),

    # AutoDagVolumesRootFolderPath
    Puppet::Resource::Param(Any, 'dsc_autodagvolumesrootfolderpath'),

    # DatabaseAvailabilityGroupIpAddresses
    Puppet::Resource::Param(Any, 'dsc_databaseavailabilitygroupipaddresses'),

    # DatacenterActivationMode - Valid values are Off, DagOnly.
    Puppet::Resource::Param(Any, 'dsc_datacenteractivationmode'),

    # DomainController
    Puppet::Resource::Param(Any, 'dsc_domaincontroller'),

    # FileSystem - Valid values are NTFS, ReFS.
    Puppet::Resource::Param(Any, 'dsc_filesystem'),

    # ManualDagNetworkConfiguration
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_manualdagnetworkconfiguration'),

    # NetworkCompression - Valid values are Disabled, Enabled, InterSubnetOnly, SeedOnly.
    Puppet::Resource::Param(Any, 'dsc_networkcompression'),

    # NetworkEncryption - Valid values are Disabled, Enabled, InterSubnetOnly, SeedOnly.
    Puppet::Resource::Param(Any, 'dsc_networkencryption'),

    # PreferenceMoveFrequency
    Puppet::Resource::Param(Any, 'dsc_preferencemovefrequency'),

    # ReplayLagManagerEnabled
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_replaylagmanagerenabled'),

    # ReplicationPort
    Puppet::Resource::Param(Any, 'dsc_replicationport'),

    # SkipDagValidation
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_skipdagvalidation'),

    # WitnessDirectory
    Puppet::Resource::Param(Any, 'dsc_witnessdirectory'),

    # WitnessServer
    Puppet::Resource::Param(Any, 'dsc_witnessserver'),

    # The specific backend to use for this `dsc_xexchdatabaseavailabilitygroup`
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
