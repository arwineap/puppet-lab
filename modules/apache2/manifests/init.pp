class httpd ( $conf = 'default-apache2.conf', vhost = '' ) {
    if ( $vhost == '' ) {
        fail('Must define a vhost to install')
    }

    package { 'apache2-mpm-prefork':
        ensure => 'installed',
    }

    file { '/etc/apache2/apache2.conf':
        ensure => file,
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => "puppet:///apache2/${conf}"
    }

    file { "/etc/apache2/sites-enabled/${vhost}":
        ensure => file,
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
        source => "puppet:///apache2/${vhost}",
    }
}
