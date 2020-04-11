# This file was automatically generated on 2020-04-10 21:03:54 -0600.
# Use the 'puppet generate types' command to regenerate this file.

Puppet::Resource::ResourceType3.new(
  'smb_user',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # Name of the user
    Puppet::Resource::Param(Any, 'name', true),

    # Force use of username as user's CN
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'use_username_as_cn'),

    # User's given name
    Puppet::Resource::Param(Any, 'given_name'),

    # hash of attributes
    Puppet::Resource::Param(Any, 'attributes'),

    # password of the user
    Puppet::Resource::Param(Any, 'password'),

    # force the password value (if false, only set password at creation time)
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'force_password'),

    # list of groups
    Puppet::Resource::Param(Any, 'groups'),

    # The specific backend to use for this `smb_user`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ruby
    # : * Required binaries: `/usr/bin/samba-tool`, `/usr/bin/smbclient`, `/usr/local/bin/additional-samba-tool`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
