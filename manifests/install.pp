class h2o::install (
  String $ensure = $h2o::package_ensure,
) {

  package { 'h2o':
    ensure => $ensure,
  }

  file { '/var/run/h2o':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

}
