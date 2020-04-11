# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xSCSPFServerSetup resource type.
# Automatically generated from
# 'xSCSPF/DSCResources/MSFT_xSCSPFServerSetup/MSFT_xSCSPFServerSetup.schema.mof'
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
  'dsc_xscspfserversetup',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Ensure - An enumerated value that describes if SPF server is expected to be installed on the machine.
    # Present {default}
    # Absent
    #  Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # SourcePath - UNC path to the root of the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcepath'),

    # SourceFolder - Folder within the source path containing the source files for installation.
    Puppet::Resource::Param(Any, 'dsc_sourcefolder'),

    # SetupCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_setupcredential'),

    # SendCEIPReports - Participate in the Customer Experience Improvement Program.
    Puppet::Resource::Param(Any, 'dsc_sendceipreports'),

    # UseMicrosoftUpdate - Use Microsoft Update.
    Puppet::Resource::Param(Any, 'dsc_usemicrosoftupdate'),

    # SpecifyCertificate - Use an existing certificate.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_specifycertificate'),

    # CertificateName - Name of existing certificate to use.
    Puppet::Resource::Param(Any, 'dsc_certificatename'),

    # DatabaseServer - Name of the database server.
    Puppet::Resource::Param(Any, 'dsc_databaseserver'),

    # DatabasePortNumber - Port of the database server instance.
    Puppet::Resource::Param(Any, 'dsc_databaseportnumber'),

    # DatabaseName - Name of the SPF database.
    Puppet::Resource::Param(Any, 'dsc_databasename'),

    # WebSitePortNumber - Port for the SPF web service.
    Puppet::Resource::Param(Any, 'dsc_websiteportnumber'),

    # SCVMM - Credential for the VMM application pool.
    Puppet::Resource::Param(Any, 'dsc_scvmm'),

    # SCVMMUsername - Output username of the VMM application pool serivce.
    Puppet::Resource::Param(Any, 'dsc_scvmmusername'),

    # SCAdmin - Credential for the Admin application pool
    Puppet::Resource::Param(Any, 'dsc_scadmin'),

    # SCAdminUsername - Output username of the Admin application pool serivce.
    Puppet::Resource::Param(Any, 'dsc_scadminusername'),

    # SCProvider - Credential for the Provider application pool
    Puppet::Resource::Param(Any, 'dsc_scprovider'),

    # SCProviderUsername - Output username of the Provider application pool serivce.
    Puppet::Resource::Param(Any, 'dsc_scproviderusername'),

    # SCUsage - Credential for the Usage application pool
    Puppet::Resource::Param(Any, 'dsc_scusage'),

    # SCUsageUsername - Output username of the Usage application pool serivce.
    Puppet::Resource::Param(Any, 'dsc_scusageusername'),

    # VMMSecurityGroupUsers - Administrator of the VMM application pool.
    Puppet::Resource::Param(Any, 'dsc_vmmsecuritygroupusers'),

    # AdminSecurityGroupUsers - Administrator of the Admin application pool
    Puppet::Resource::Param(Any, 'dsc_adminsecuritygroupusers'),

    # ProviderSecurityGroupUsers - Administrator of the Provider application pool
    Puppet::Resource::Param(Any, 'dsc_providersecuritygroupusers'),

    # UsageSecurityGroupUsers - Administrator of the Usage application pool
    Puppet::Resource::Param(Any, 'dsc_usagesecuritygroupusers'),

    # The specific backend to use for this `dsc_xscspfserversetup`
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
