# plex
#
# Install and configure a plex docker container for cluster management.
#
# @summary  This profiles deployes the plex docker
#
# @param    none   - provides the location of the influxdb
#
# @example
#   include profile::apps::docker::plex or assign in PE classifier
# == Class: profile::apps::docker::plex
class profile::docker::openvpn (
  String $private = 'private-network',
  String $public = 'public-network',

) {
  ['1194'].each |$port| {
    firewall { "901 udp plex ${port}":
      proto  => 'udp',
      dport  => $port,
      action => 'accept',
    }
  }

  docker_volume { 'openvpn-volume':
    ensure => present,
  }

  docker::image { 'openvpn':
    image     => 'kylemanna/openvpn',
    image_tag => 'latest'

  }

  docker::run { 'openvpn-ca':
    image                     => 'kylemanna/openvpn:latest',
    volumes                   => ['openvpn-volume:/'],
    command                   => 'ovpn_genconfig -u udp://vpn.familyroberson.COM',
    net                       => $public,
    restart_service           => false,
    pull_on_start             => false,
    docker_service            => false,
    remove_container_on_start => true,
  }
  docker::run { 'openvpn-server':
    image                     => 'kylemanna/openvpn:latest',
    volumes                   => ['openvpn-volume:/'],
    command                   => 'ovpn_initpki',
    net                       => $public,
    restart_service           => false,
    pull_on_start             => false,
    docker_service            => false,
    remove_container_on_start => true,
  }
  docker::run { 'openvpn-client':
    image                     => 'kylemanna/openvpn:latest',
    volumes                   => ['openvpn-volume:/'],
    command                   => 'easyrsa build-client-full macbook nopass',
    net                       => $public,
    restart_service           => false,
    pull_on_start             => false,
    docker_service            => false,
    remove_container_on_start => true,
  }

  docker::run { 'openvpn':
    image           => 'kylemanna/openvpn:latest',
    ports           => ['1194:1194'],
    volumes         => ['openvpn-volume:/config'],
    net             => $public,
    restart_service => false,
    pull_on_start   => false,
    docker_service  => true,
  }
}
