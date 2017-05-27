class h2o (
  String  $repo_ensure    = present,
  String  $package_ensure = installed,
  String  $service_ensure = running,
  Boolean $service_enable = true,
) {

  require h2o::repo
  include h2o::install
  include h2o::service

  Class['h2o::repo']
  -> Class['h2o::install']
  -> Class['h2o::service']

}
