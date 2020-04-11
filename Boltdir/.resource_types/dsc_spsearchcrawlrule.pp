# This file was automatically generated on 2020-04-10 21:03:28 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC SPSearchCrawlRule resource type.
# Automatically generated from
# 'SharePointDsc/DSCResources/MSFT_SPSearchCrawlRule/MSFT_SPSearchCrawlRule.schema.mof'
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
  'dsc_spsearchcrawlrule',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Path - The name of the search service application
    Puppet::Resource::Param(Any, 'dsc_path'),

    # ServiceAppName - The name of the search service application
    Puppet::Resource::Param(Any, 'dsc_serviceappname'),

    # AuthenticationType - Authentication type used by the crawl rule Valid values are DefaultRuleAccess, BasicAccountRuleAccess, CertificateRuleAccess, NTLMAccountRuleAccess, FormRuleAccess, CookieRuleAccess, AnonymousAccess.
    Puppet::Resource::Param(Any, 'dsc_authenticationtype'),

    # RuleType - The type of the rule Valid values are InclusionRule, ExclusionRule.
    Puppet::Resource::Param(Any, 'dsc_ruletype'),

    # CrawlConfigurationRules - The configuration options for this rule Valid values are FollowLinksNoPageCrawl, CrawlComplexUrls, CrawlAsHTTP.
    Puppet::Resource::Param(Any, 'dsc_crawlconfigurationrules'),

    # AuthenticationCredentials - The credentials used for this crawl rule (used for types BasicAccountRuleAccess and NTLMAccountRuleAccess)
    Puppet::Resource::Param(Any, 'dsc_authenticationcredentials'),

    # CertificateName - The certificate used for this crawl rule (used for type CertificateRuleAccess)
    Puppet::Resource::Param(Any, 'dsc_certificatename'),

    # Ensure - Present if the crawl rule should exist, absent if it should not Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5
    Puppet::Resource::Param(Any, 'dsc_installaccount'),

    # The specific backend to use for this `dsc_spsearchcrawlrule`
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
