# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRDSessionCollection resource type.
# Automatically generated from
# 'xRemoteDesktopSessionHost/DSCResources/MSFT_xRDSessionCollection/MSFT_xRDSessionCollection.schema.mof'
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
  'dsc_xrdsessioncollection',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # CollectionName - Specifies a name for the session collection.
    Puppet::Resource::Param(Any, 'dsc_collectionname'),

    # SessionHost - Specifies an RD Session Host server to include in the session collection.
    Puppet::Resource::Param(Any, 'dsc_sessionhost'),

    # CollectionDescription - Specifies a description for the collection.
    Puppet::Resource::Param(Any, 'dsc_collectiondescription'),

    # ConnectionBroker - Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
    Puppet::Resource::Param(Any, 'dsc_connectionbroker'),

    # The specific backend to use for this `dsc_xrdsessioncollection`
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
