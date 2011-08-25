class httpd {
  
  package {"httpd":
    ensure => installed
  }

  service {"httpd":
    ensure => running,
    require => Package["httpd"]
  }

  package {"httpd-devel":
    ensure => installed,
    require => Package["httpd"],
  }

  package {"mod_ssl":
    ensure => installed,
    require => Package["httpd"],
  }

  package {"mod_xsendfile":
    ensure => installed,
    require => Package["httpd"],
  }

}