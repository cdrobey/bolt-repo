# This file was automatically generated on 2020-04-10 21:03:26 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPFarmSolution resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPFarmSolution/MSFT_SPFarmSolution.schema.mof'
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
  'dsc_spfarmsolution',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - The filename of the WSP package
    Puppet::Resource::Param(Any, 'dsc_name'),

    # LiteralPath - The full path to the WSP file
    Puppet::Resource::Param(Any, 'dsc_literalpath'),

    # WebApplications - A list of the web applications to deploy this to
    Puppet::Resource::Param(Any, 'dsc_webapplications'),

    # Ensure - Present if the WSP should be deployed, or Absent if it should be removed Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # Version - The version of the package that is being modified
    Puppet::Resource::Param(Any, 'dsc_version'),

    # Deployed - Should the solution be deployed to the farm, or just installed to the farm
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_deployed'),

    # SolutionLevel - What compatability level should the WSP be deployed as? Valid values are 14, 15, All.
    Puppet::Resource::Param(Any, 'dsc_solutionlevel'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spfarmsolution`
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
