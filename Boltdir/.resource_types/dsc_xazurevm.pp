# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureVM resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureVM/MSFT_xAzureVM.schema.mof'
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
  'dsc_xazurevm',
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

    # StorageAccountName - Specifies the name of the storage account for the VM.
    Puppet::Resource::Param(Any, 'dsc_storageaccountname'),

    # InstanceSize - Specifies the size of the instance.   For a list of virtual machine sizes, see http://msdn.microsoft.com/library/azure/dn197896.aspx
    Puppet::Resource::Param(Any, 'dsc_instancesize'),

    # Linux - Creates a Linux virtual machine.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_linux'),

    # Windows - Creates a Windows virtual machine.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_windows'),

    # Credential
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # ExtensionContainerName - The name of the Container in Azure Blob storage where the script files will reside.  Case sensitive.
    Puppet::Resource::Param(Any, 'dsc_extensioncontainername'),

    # ExtensionFileList - List of files in Azure Blob container that should be copied in to the VM.  Case sensitive.
    Puppet::Resource::Param(Any, 'dsc_extensionfilelist'),

    # ExtensionScriptName - Name of one of the files in the container that will be exectued at startup.  Case sensitive.
    Puppet::Resource::Param(Any, 'dsc_extensionscriptname'),

    # The specific backend to use for this `dsc_xazurevm`
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
