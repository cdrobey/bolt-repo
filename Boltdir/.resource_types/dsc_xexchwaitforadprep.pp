# This file was automatically generated on 2020-04-10 21:03:37 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xExchWaitForADPrep resource type.
# Automatically generated from
# 'xExchange/DSCResources/MSFT_xExchWaitForADPrep/MSFT_xExchWaitForADPrep.schema.mof'
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
  'dsc_xexchwaitforadprep',
  [
    # Valid values are `exists?`, `present`.
    Puppet::Resource::Param(Enum['exists?', 'present'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # Identity - Not actually used. Enter anything, as long as it's not null
    Puppet::Resource::Param(Any, 'dsc_identity'),

    # Credential - Credentials used to perform Active Directory lookups against the Schema, Configuration, and Domain naming contexts
    Puppet::Resource::Param(Any, 'dsc_credential'),

    # SchemaVersion - Specifies that the Active Directory schema should have been prepared using Exchange 2013 'setup /PrepareSchema', and should be at the specified version
    Puppet::Resource::Param(Any, 'dsc_schemaversion'),

    # OrganizationVersion - Specifies that the Exchange Organization should have been prepared using Exchange 2013 'setup /PrepareAD', and should be at the specified version
    Puppet::Resource::Param(Any, 'dsc_organizationversion'),

    # DomainVersion - Specifies that the domain containing the target Exchange 2013 server was prepared using setup /PrepareAD, /PrepareDomain, or /PrepareAllDomains, and should be at the specified version
    Puppet::Resource::Param(Any, 'dsc_domainversion'),

    # ExchangeDomains - The FQDN's of domains that should be checked for DomainVersion in addition to the domain that this Exchange server belongs to
    Puppet::Resource::Param(Any, 'dsc_exchangedomains'),

    # RetryIntervalSec - How many seconds to wait between retries when checking whether AD has been prepped. Defaults to 60.
    Puppet::Resource::Param(Any, 'dsc_retryintervalsec'),

    # RetryCount - How many retry attempts should be made to see if AD has been prepped before an exception is thrown. Defaults to 30.
    Puppet::Resource::Param(Any, 'dsc_retrycount'),

    # The specific backend to use for this `dsc_xexchwaitforadprep`
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
