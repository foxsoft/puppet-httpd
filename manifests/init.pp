class httpd {

  service {"httpd":
    ensure => running
  }
}