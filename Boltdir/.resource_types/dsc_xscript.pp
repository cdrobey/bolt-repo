# This file was automatically generated on 2020-04-10 21:03:41 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xScript resource type.
# Automatically generated from
# 'xPSDesiredStateConfiguration/DSCResources/MSFT_xScriptResource/MSFT_xScriptResource.schema.mof'
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
  'dsc_xscript',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # GetScript - A string that can be used to create a PowerShell script block that retrieves the current state of the resource.
    Puppet::Resource::Param(Any, 'dsc_getscript'),

    # SetScript - A string that can be used to create a PowerShell script block that sets the resource to the desired state.
    Puppet::Resource::Param(Any, 'dsc_setscript'),

    # TestScript - A string that can be used to create a PowerShell script block that validates whether or not the resource is in the desired state.
    Puppet::Resource::Param(Any, 'dsc_testscript'),

    # Credential - The credential of the user account to run the script under if needed.
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # Result - The result from the GetScript script block.
    Puppet::Resource::Param(Any, 'dsc_result'),

    # The specific backend to use for this `dsc_xscript`
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
