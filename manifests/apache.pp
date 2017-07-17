
class DEV::apache {


$package_name = $facts['os']['family'] ? {

  'Redhat' => 'httpd',
  'Debian' => 'apache2',

}

package { $package_name:
    ensure => installed,
    
}

service { $package_name:
    ensure     => running,
    enable     => true,
      
}

}