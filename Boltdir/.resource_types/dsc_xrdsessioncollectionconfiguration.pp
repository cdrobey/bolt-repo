# This file was automatically generated on 2020-04-10 21:03:39 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xRDSessionCollectionConfiguration resource type.
# Automatically generated from
# 'xRemoteDesktopSessionHost/DSCResources/MSFT_xRDSessionCollectionConfiguration/MSFT_xRDSessionCollectionConfiguration.schema.mof'
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
  'dsc_xrdsessioncollectionconfiguration',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # CollectionName - Specifies the name of a session collection.
    Puppet::Resource::Param(Any, 'dsc_collectionname'),

    # ActiveSessionLimitMin - Specifies the maximum time, in minutes, an active session runs. After this period, the RD Session Host server ends the session.
    Puppet::Resource::Param(Any, 'dsc_activesessionlimitmin'),

    # AuthenticateUsingNLA - Indicates whether to use Network Level Authentication (NLA). If this value is $True, Remote Desktop uses NLA to authenticate a user before the user sees a logon screen.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_authenticateusingnla'),

    # AutomaticReconnectionEnabled - Indicates whether the Remote Desktop client attempts to reconnect after a connection interruption.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_automaticreconnectionenabled'),

    # BrokenConnectionAction - Specifies an action for an RD Session Host server to take after a connection interruption. The acceptable values for this parameter are: None, Disconnect, LogOff.
    Puppet::Resource::Param(Any, 'dsc_brokenconnectionaction'),

    # ClientDeviceRedirectionOptions - Specifies a type of client device to be redirected to an RD Session Host server in this session collection. The acceptable values for this parameter are: None, AudioVideoPlayBack, AudioRecording, COMPort, PlugAndPlayDevice, SmartCard, Clipboard, LPTPort, Drive, TimeZone.  You can use binary-or to combine two or more values of this enum to specify multiple client device types.
    Puppet::Resource::Param(Any, 'dsc_clientdeviceredirectionoptions'),

    # ClientPrinterAsDefault - Indicates whether to use the client printer or server printer as the default printer. If this value is $True, use the client printer as default. If this value is $False, use the server as default.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_clientprinterasdefault'),

    # ClientPrinterRedirected - Indicates whether to use client printer redirection, which routes print jobs from the Remote Desktop session to a printer attached to the client computer.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_clientprinterredirected'),

    # CollectionDescription - Specifies a description of the session collection.
    Puppet::Resource::Param(Any, 'dsc_collectiondescription'),

    # ConnectionBroker - Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
    Puppet::Resource::Param(Any, 'dsc_connectionbroker'),

    # CustomRdpProperty - Specifies Remote Desktop Protocol (RDP) settings to include in the .rdp files for all Windows Server 2012 RemoteApp programs and remote desktops published in this collection.
    Puppet::Resource::Param(Any, 'dsc_customrdpproperty'),

    # DisconnectedSessionLimitMin - Specifies a length of time, in minutes. After client disconnection from a session for this period, the RD Session Host ends the session.
    Puppet::Resource::Param(Any, 'dsc_disconnectedsessionlimitmin'),

    # EncryptionLevel - Specifies the level of data encryption used for a Remote Desktop session. The acceptable values for this parameter are: Low, ClientCompatible, High, FipsCompliant. The default value is ClientCompatible.
    Puppet::Resource::Param(Any, 'dsc_encryptionlevel'),

    # IdleSessionLimitMin - Specifies the length of time, in minutes, to wait before an RD Session Host logs off or disconnects an idle session. The BrokenConnectionAction parameter determines whether to log off or disconnect.
    Puppet::Resource::Param(Any, 'dsc_idlesessionlimitmin'),

    # MaxRedirectedMonitors - Specifies the maximum number of client monitors that an RD Session Host server can redirect to a remote session. The highest value for this parameter is 16.
    Puppet::Resource::Param(Any, 'dsc_maxredirectedmonitors'),

    # RDEasyPrintDriverEnabled - Specifies whether to enable the Remote Desktop Easy Print driver.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_rdeasyprintdriverenabled'),

    # SecurityLayer - Specifies which security protocol to use. The acceptable values for this parameter are:  RDP, Negotiate, SSL.  The default value is Negotiate.
    Puppet::Resource::Param(Any, 'dsc_securitylayer'),

    # TemporaryFoldersDeletedOnExit - Specifies whether to delete temporary folders from the RD Session Host server for a disconnected session.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_temporaryfoldersdeletedonexit'),

    # UserGroup - Specifies a domain group authorized to connect to the RD Session Host servers in a session collection.
    Puppet::Resource::Param(Any, 'dsc_usergroup'),

    # The specific backend to use for this `dsc_xrdsessioncollectionconfiguration`
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
