class h2o::repo::apt {

  include ::apt

  apt::source { 'bintray-tatsushid-h2o':
    location => 'http://dl.bintray.com/tatsushid/h2o-deb',
    repos    => 'main',
    release  => 'h2o',
    key      => {
      id     => '6BACCE33697C7E568D5C162F018A7A21B2EC51BA',
      source => 'https://bintray.com/user/downloadSubjectPublicKey?username=bintray',
    }
  }

}
