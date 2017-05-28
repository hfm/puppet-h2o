class h2o::repo {

  case $facts['os']['family'] {
    'RedHat': { include h2o::repo::yum }
    'Debian': {
      include ::apt
      require ::apt::update
      include h2o::repo::apt
    }
    default:  { fail("Unsupported os family: ${facts['os']['family']}") }
  }

}
