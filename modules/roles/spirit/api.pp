class { 'role::spirit::api':
    file { '/tmp/role':
        owner => 'root',
        group => 'root',
        mode  => '0755',
        content => 'role::spirit::api',
    }
}
