class h2o::repo::apt (
  String $ensure = $h2o::repo_ensure,
) {

  $_dist = $facts['os']['distro']['codename']

  apt::source { 'bintray-tatsushid-h2o':
    ensure   => $ensure,
    location => 'http://dl.bintray.com/tatsushid/h2o-deb',
    repos    => 'main',
    release  => "${_dist}-backports",
    key      => {
      id     => '8756C4F765C9AC3CB6B85D62379CE192D401AB61',
      source => 'https://bintray.com/user/downloadSubjectPublicKey?username=bintray',
    },
  }

}
