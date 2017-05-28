class h2o::service (
  String  $ensure = $h2o::service_ensure,
  Boolean $enable = $h2o::service_enable,
) {

  service { 'h2o':
    ensure => $ensure,
    enable => $enable,
  }

}
