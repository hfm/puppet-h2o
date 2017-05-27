class h2o::service {

  service { 'h2o':
    ensure => running,
    enable => true,
  }

}
