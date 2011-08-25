class httpd {

  service {"httpd":
    ensure => running,
    require => Package["httpd"]
  }
}