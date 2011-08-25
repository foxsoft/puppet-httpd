class apache {

  service {"httpd":
    ensure => running
  }
}