
exec { 'apt-get update':
 command => '/usr/bin/apt-get update'
}

package { 'docker-engine':
 ensure  => "installed",
 require => Exec['apt-get update']
}

