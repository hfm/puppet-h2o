# Class: h2o::repo
# ===========================
#
# h2o::repo is to setup repository.
class h2o::repo {

  case $facts['os']['family'] {
    'RedHat': { include h2o::repo::yum }
    'Debian': { include h2o::repo::apt }
    default:  { fail("Unsupported os family: ${facts['os']['family']}") }
  }

}
