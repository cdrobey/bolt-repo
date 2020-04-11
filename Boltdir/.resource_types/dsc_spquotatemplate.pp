# This file was automatically generated on 2020-04-10 21:03:27 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPQuotaTemplate resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPQuotaTemplate/MSFT_SPQuotaTemplate.schema.mof'
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
  'dsc_spquotatemplate',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The name of the quota template
    Puppet::Resource::Param(Any, 'dsc_name'),

    # StorageMaxInMB - The maximum storage for sites of this template in MB
    Puppet::Resource::Param(Any, 'dsc_storagemaxinmb'),

    # StorageWarningInMB - The amount of storage for sites of this template that triggers a warning
    Puppet::Resource::Param(Any, 'dsc_storagewarninginmb'),

    # MaximumUsagePointsSolutions - The maximum number of performance points for sandbox solutions for this template
    Puppet::Resource::Param(Any, 'dsc_maximumusagepointssolutions'),

    # WarningUsagePointsSolutions - The warning number of performance points for sandbox solutions for this template
    Puppet::Resource::Param(Any, 'dsc_warningusagepointssolutions'),

    # Ensure - Present to create this template, absent to ensure it does not exist Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spquotatemplate`
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
