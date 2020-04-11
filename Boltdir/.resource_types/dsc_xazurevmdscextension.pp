# This file was automatically generated on 2020-04-10 21:03:32 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzureVMDscExtension resource type.
# Automatically generated from
# 'xAzure/DSCResources/MSFT_xAzureVMDscExtension/MSFT_xAzureVMDscExtension.schema.mof'
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
  'dsc_xazurevmdscextension',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # VMName - Specifies name of the VM.  This is used together with ServiceName to construct a persistent vm object.
    Puppet::Resource::Param(Any, 'dsc_vmname'),

    # ServiceName - Specifies name of the Service where the VM is deployed.
    Puppet::Resource::Param(Any, 'dsc_servicename'),

    # ConfigurationArchive - The name of the configuration package .zip file that was previously uploaded by Publish-AzureVMDscConfiguration. This parameter must specify only the name of the file, without any path.
    Puppet::Resource::Param(Any, 'dsc_configurationarchive'),

    # StorageAccountName - Specifies the name of the Storage Account used to create the Storage Context.  The Azure Storage Context provides the security settings used to access the configuration script. This context should provide read access to the container specified by ContainerName.
    Puppet::Resource::Param(Any, 'dsc_storageaccountname'),

    # ConfigurationArgument - A hashtable specifying the arguments to the configuration function. The keys correspond to the parameter names and the values to the parameter values.
    Puppet::Resource::Param(Any, 'dsc_configurationargument'),

    # ConfigurationDataPath - The path to a .psd1 file that specifies the data for the configuration function.
    Puppet::Resource::Param(Any, 'dsc_configurationdatapath'),

    # Configuration - Name of the configuration script or module that will be invoked by the DSC Extension.
    Puppet::Resource::Param(Any, 'dsc_configuration'),

    # ContainerName - Name of the Azure Storage Container where the ConfigurationArchive is located.
    Puppet::Resource::Param(Any, 'dsc_containername'),

    # Force - By default Set-AzureVMDscExtension will not overwrite any existing blobs. Use -Force to overwrite them.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_force'),

    # ReferenceName - The Extension Reference Name
    Puppet::Resource::Param(Any, 'dsc_referencename'),

    # StorageEndpointSuffix - The DNS endpoint suffix for all storage services, e.g. core.windows.net
    Puppet::Resource::Param(Any, 'dsc_storageendpointsuffix'),

    # Version - The specific version of the DSC Extension to use. If not given, it will default to 1.*
    Puppet::Resource::Param(Any, 'dsc_version'),

    # TimeStamp - Returns the timestamp of the last DSC Extension execution.
    Puppet::Resource::Param(Any, 'dsc_timestamp'),

    # Code - Returns the message code for the latest oepration by the DSC Extension.
    Puppet::Resource::Param(Any, 'dsc_code'),

    # Message - Returns the formatted message string for the latest operation by the DSC Extension.
    Puppet::Resource::Param(Any, 'dsc_message'),

    # Status - Returns the state of the DSC Extension from Azure.
    Puppet::Resource::Param(Any, 'dsc_status'),

    # The specific backend to use for this `dsc_xazurevmdscextension`
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
