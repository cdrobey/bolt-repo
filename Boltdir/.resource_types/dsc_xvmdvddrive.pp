# This file was automatically generated on 2020-04-10 21:03:44 -0600.
# Use the 'puppet generate types' command to regenerate this file.

# The DSC xVMDvdDrive resource type.
# Automatically generated from
# 'xHyper-V/DSCResources/MSFT_xVMDvdDrive/MSFT_xVMDvdDrive.schema.mof'
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
  'dsc_xvmdvddrive',
  [
    # Valid values are `exists?`, `present`, `absent`.
    Puppet::Resource::Param(Enum['exists?', 'present', 'absent'], 'ensure')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # PsDscRunAsCredential
    Puppet::Resource::Param(Any, 'dsc_psdscrunascredential'),

    # VMName - Specifies the name of the virtual machine to which the DVD drive is to be added.
    Puppet::Resource::Param(Any, 'dsc_vmname'),

    # ControllerNumber - Specifies the number of the controller to which the DVD drive is to be added.
    Puppet::Resource::Param(Any, 'dsc_controllernumber'),

    # ControllerLocation - Specifies the number of the location on the controller at which the DVD drive is to be added.
    Puppet::Resource::Param(Any, 'dsc_controllerlocation'),

    # Path - Specifies the full path to the virtual hard disk file or physical hard disk volume for the added DVD drive.
    Puppet::Resource::Param(Any, 'dsc_path'),

    # Ensure - Specifies if the DVD Drive should exist or not. Valid values are Present, Absent.
    Puppet::Resource::Param(Any, 'dsc_ensure'),

    # The specific backend to use for this `dsc_xvmdvddrive`
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
