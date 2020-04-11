# This file was automatically generated on 2020-04-10 21:03:46 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xWebVirtualDirectory resource type.
# Automatically generated from
# 'xWebAdministration/DSCResources/MSFT_xWebVirtualDirectory/MSFT_xWebVirtualDirectory.schema.mof'
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
  'dsc_xwebvirtualdirectory',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Website - Name of website with which Web Application is associated
    Puppet::Resource::Param(Any, 'dsc_website'),

    # WebApplication - Web application name for the virtual directory
    Puppet::Resource::Param(Any, 'dsc_webapplication'),

    # Name - Name of virtual directory
    Puppet::Resource::Param(Any, 'dsc_name'),

    # PhysicalPath - Physical path for the virtual directory
    Puppet::Resource::Param(Any, 'dsc_physicalpath'),

    # Ensure - Whether virtual directory should be present or absent Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xwebvirtualdirectory`
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
