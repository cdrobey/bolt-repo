# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRDRemoteApp resource type.
# Automatically generated from
# 'xRemoteDesktopSessionHost/DSCResources/MSFT_xRDRemoteApp/MSFT_xRDRemoteApp.schema.mof'
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
  'dsc_xrdremoteapp',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Alias - Specifies an alias for the RemoteApp program.
    Puppet::Resource::Param(Any, 'dsc_alias'),

    # CollectionName - Specifies the name of the personal virtual desktop collection or session collection. The cmdlet publishes the RemoteApp program to this collection.
    Puppet::Resource::Param(Any, 'dsc_collectionname'),

    # DisplayName - Specifies a name to display to users for the RemoteApp program.
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # FilePath - Specifies a path for the executable file for the application. Do not include any environment variables.
    Puppet::Resource::Param(Any, 'dsc_filepath'),

    # FileVirtualPath - Specifies a path for the application executable file. This path resolves to the same location as the value of the FilePath parameter, but it can include environment variables.
    Puppet::Resource::Param(Any, 'dsc_filevirtualpath'),

    # FolderName - Specifies the name of the folder that the RemoteApp program appears in on the Remote Desktop Web Access (RD Web Access) webpage and in the Start menu for subscribed RemoteApp and Desktop Connections.
    Puppet::Resource::Param(Any, 'dsc_foldername'),

    # CommandLineSetting - Specifies whether the RemoteApp program accepts command-line arguments from the client at connection time. The acceptable values for this parameter are:  Allow, DoNotAllow, Require
    Puppet::Resource::Param(Any, 'dsc_commandlinesetting'),

    # RequiredCommandLine - Specifies a string that contains command-line arguments that the client can use at connection time with the RemoteApp program.
    Puppet::Resource::Param(Any, 'dsc_requiredcommandline'),

    # IconIndex - Specifies the index within the icon file (specified by the IconPath parameter) where the RemoteApp program's icon can be found.
    Puppet::Resource::Param(Any, 'dsc_iconindex'),

    # IconPath - Specifies the path to a file containing the icon to display for the RemoteApp program identified by the Alias parameter.
    Puppet::Resource::Param(Any, 'dsc_iconpath'),

    # UserGroups - Specifies a domain group that can view the RemoteApp in RD Web Access, and in RemoteApp and Desktop Connections. To allow all users to see a RemoteApp program, provide a value of Null.
    Puppet::Resource::Param(Any, 'dsc_usergroups'),

    # ShowInWebAccess - Specifies whether to show the RemoteApp program in the RD Web Access server, and in RemoteApp and Desktop Connections that the user subscribes to.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_showinwebaccess'),

    # The specific backend to use for this `dsc_xrdremoteapp`
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
