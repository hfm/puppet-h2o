class h2o::repo::yum {

  $_osfamily = $facts['os']['name'] ? {
    'CentOS' => 'centos',
    'Fedora' => 'fedora',
  }

  yumrepo { 'h2o':
    ensure        => present,
    descr         => 'bintray-tatsushid-h2o-rpm',
    baseurl       => "https://dl.bintray.com/tatsushid/h2o-rpm/${_osfamily}/\$releasever/\$basearch/",
    enabled       => 1,
    gpgcheck      => 0,
    repo_gpgcheck => 0,
  }

}
