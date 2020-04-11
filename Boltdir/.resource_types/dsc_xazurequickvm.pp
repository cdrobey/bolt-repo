# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureQuickVM resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureQuickVM/MSFT_xAzureQuickVM.schema.mof'
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
  'dsc_xazurequickvm',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Name - Specifies the name of the virtual machine.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # Ensure - Specifies whether the Azure VM should be present or absent. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # ImageName - Specifies the name of the operating system image to use to create the operating system disk.
    Puppet::Resource::Param(Any, 'dsc_imagename'),

    # ServiceName - Specifies the new or existing service name.
    Puppet::Resource::Param(Any, 'dsc_servicename'),

    # Linux - Creates a Linux virtual machine.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_linux'),

    # LinuxUser - Specifies the Linux administrative account name to create.
    Puppet::Resource::Param(Any, 'dsc_linuxuser'),

    # Windows - Creates a Windows virtual machine.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windows'),

    # AdminUsername - Specifies the name for the administrative account to create.
    Puppet::Resource::Param(Any, 'dsc_adminusername'),

    # Password - Specifies the password for the administrative account.
    Puppet::Resource::Param(Any, 'dsc_password'),

    # InstanceSize - Specifies the size of the instance.   For a list of virtual machine sizes, see http://msdn.microsoft.com/library/azure/dn197896.aspx
    Puppet::Resource::Param(Any, 'dsc_instancesize'),

    # The specific backend to use for this `dsc_xazurequickvm`
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
