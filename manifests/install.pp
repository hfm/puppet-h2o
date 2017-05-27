class h2o::install {

  package { 'h2o':
    ensure => installed,
  }

  file { '/var/run/h2o':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

}
