# This file was automatically generated on 2020-04-10 21:03:31 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xAzurePackResourceProvider resource type.
# Automatically generated from
# 'xAzurePack/DSCResources/MSFT_xAzurePackResourceProvider/MSFT_xAzurePackResourceProvider.schema.mof'
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
  'dsc_xazurepackresourceprovider',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # AuthenticationSite - URL of the authentication site.
    Puppet::Resource::Param(Any, 'dsc_authenticationsite'),

    # AdminUri - Specifies the URI of the Windows Azure Pack administrator API.
    Puppet::Resource::Param(Any, 'dsc_adminuri'),

    # Name - Specifies the name of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_name'),

    # AzurePackAdminCredential - Credential to be used to perform the installation.
    Puppet::Resource::Param(Any, 'dsc_azurepackadmincredential'),

    # DisplayName - Specifies the display name of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_displayname'),

    # Enabled - Enables the resource provider.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_enabled'),

    # PassthroughEnabled - Indicates whether the resource provider supports API pass-through.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_passthroughenabled'),

    # AllowAnonymousAccess - Specifies the URI of the Windows Azure Pack administrator API.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowanonymousaccess'),

    # AllowMultipleInstances - Indicates that the cmdlet allows multiple instances of the resource provider.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'dsc_allowmultipleinstances'),

    # AdminForwardingAddress - Specifies an administrative forwarding address for a resource provider.
    Puppet::Resource::Param(Any, 'dsc_adminforwardingaddress'),

    # AdminAuthenticationMode - Specifies the administrative authentication mode for a resource provider. Valid values are None, Basic, Windows.
    Puppet::Resource::Param(Any, 'dsc_adminauthenticationmode'),

    # AdminAuthenticationUser - Specifies, as a PSCredential object, an administrative user name and password to connect to a resource provider.
    Puppet::Resource::Param(Any, 'dsc_adminauthenticationuser'),

    # AdminAuthenticationUsername - Output for the administrative user name.
    Puppet::Resource::Param(Any, 'dsc_adminauthenticationusername'),

    # TenantForwardingAddress - Specifies the tenant forwarding address of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_tenantforwardingaddress'),

    # TenantAuthenticationMode - Specifies the tenant authentication mode for a resource provider. Valid values are None, Basic, Windows.
    Puppet::Resource::Param(Any, 'dsc_tenantauthenticationmode'),

    # TenantAuthenticationUser - Specifies, as a PSCredential object, a tenant user name and password to connect to a resource provider.
    Puppet::Resource::Param(Any, 'dsc_tenantauthenticationuser'),

    # TenantAuthenticationUsername - Output for the tenant user name.
    Puppet::Resource::Param(Any, 'dsc_tenantauthenticationusername'),

    # TenantSourceUriTemplate - Specifies the tenant source URI template of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_tenantsourceuritemplate'),

    # TenantTargetUriTemplate - Specifies the tenant target URI template of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_tenanttargeturitemplate'),

    # UsageForwardingAddress - Specifies the tenant forwarding address of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_usageforwardingaddress'),

    # UsageAuthenticationMode - Specifies the usage authentication mode for a resource provider. Valid values are None, Basic, Windows.
    Puppet::Resource::Param(Any, 'dsc_usageauthenticationmode'),

    # UsageAuthenticationUser - Specifies, as a PSCredential object, a usage user name and password to connect to a resource provider.
    Puppet::Resource::Param(Any, 'dsc_usageauthenticationuser'),

    # UsageAuthenticationUsername - Output for the usage user name.
    Puppet::Resource::Param(Any, 'dsc_usageauthenticationusername'),

    # HealthCheckForwardingAddress - Specifies the health check forwarding address for a resource provider.
    Puppet::Resource::Param(Any, 'dsc_healthcheckforwardingaddress'),

    # HealthCheckAuthenticationMode - Specifies the health check authentication mode for a resource provider. Valid values are None, Basic, Windows.
    Puppet::Resource::Param(Any, 'dsc_healthcheckauthenticationmode'),

    # HealthCheckAuthenticationUser - Specifies, as a PSCredential object, a health check user name and password to connect to a resource provider.
    Puppet::Resource::Param(Any, 'dsc_healthcheckauthenticationuser'),

    # HealthCheckAuthenticationUsername - Output for the health check user name.
    Puppet::Resource::Param(Any, 'dsc_healthcheckauthenticationusername'),

    # NotificationForwardingAddress - Specifies the notification forwarding address of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_notificationforwardingaddress'),

    # NotificationAuthenticationMode - Specifies the notification authentication mode for a resource provider. Valid values are None, Basic, Windows.
    Puppet::Resource::Param(Any, 'dsc_notificationauthenticationmode'),

    # NotificationAuthenticationUser - Specifies, as a PSCredential object, a notification user name and password to connect to a resource provider.
    Puppet::Resource::Param(Any, 'dsc_notificationauthenticationuser'),

    # NotificationAuthenticationUsername - Output for the notification user name.
    Puppet::Resource::Param(Any, 'dsc_notificationauthenticationusername'),

    # InstanceId - Specifies an ID for an instance of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_instanceid'),

    # InstanceDisplayName - Specifies a display name for an instance of a resource provider.
    Puppet::Resource::Param(Any, 'dsc_instancedisplayname'),

    # MaxQuotaUpdateBatchSize - Specifies the number of subscriptions that can be updated in a single request.
    Puppet::Resource::Param(Any, 'dsc_maxquotaupdatebatchsize'),

    # SubscriptionStatusPollingInterval - Specifies the time interval at which the management service polls the resource provider for subscription status updates.
    Puppet::Resource::Param(Any, 'dsc_subscriptionstatuspollinginterval'),

    # Type - Specifies the type of the resource provider. Valid values are Standard, UsageProvider, CloudServiceProvider.
    Puppet::Resource::Param(Any, 'dsc_type'),

    # The specific backend to use for this `dsc_xazurepackresourceprovider`
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
