class roles::spirit::api {
    file { '/tmp/role':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        content => 'role::spirit::api',
    }
}
