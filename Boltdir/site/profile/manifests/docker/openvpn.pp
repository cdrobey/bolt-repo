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
  ['943','9443'].each |$port| {
    firewall { "900 openvpn ${port}":
      proto  => 'tcp',
      dport  => $port,
      action => 'accept',
    }
  }
  ['1194'].each |$port| {
    firewall { "901 udp plex ${port}":
      proto  => 'udp',
      dport  => $port,
      action => 'accept',
    }
  }

  docker_volume { 'kylemanna/openvpn':
    ensure => present,
  }

  docker::image { 'openvpn':
    image     => 'kylemanna/openvpn',
    image_tag => 'latest'

  }
  docker::run { 'openvpn':
    image           => 'kylemanna/openvpn:latest',
    ports           => ['1194:1194'],
    volumes         => ['openvpn-volume:/config'],
    labels          => ['traefik.backend=pms-docker',
                        'traefik.frontend.rule=Host:openvpn.local.familyroberson.com',
                        'traefik.docker.network=public-network',
                        'traefik.port=32400'],
    net             => $public,
    restart_service => false,
    pull_on_start   => false,
    docker_service  => true,
  }
}
