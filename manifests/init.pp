class httpd {
  
  if ! defined(Package["httpd"]) {
    package {"httpd":
      ensure => installed
    }
  }

  if ! defined(Service["httpd"]) {
    service {"httpd":
      ensure => running,
      require => Package["httpd"]
    }
  }

  if ! defined(Package["httpd-devel"]) {
    package {"httpd-devel":
      ensure => installed,
      require => Package["httpd"],
    }
  }
  
  if ! defined(Package["mod_ssl"]) {
    package {"mod_ssl":
      ensure => installed,
      require => Package["httpd"],
    }
  }

  if ! defined(Package["mod_xsendfile"]) {
    package {"mod_xsendfile":
      ensure => installed,
      require => Package["httpd"],
    }
  }

}