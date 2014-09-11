class roles::spirit::api {
    file { '/tmp/role':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        content => 'role::spirit::api',
    }

# class { 'apache2':
#     conf => 'spirit-api-httpd.conf',
#     vhost => 'api.spirit.com.conf',
# }
}
