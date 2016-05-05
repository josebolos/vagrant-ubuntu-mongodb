package { 'mongodb' :
    ensure => latest
}


service { 'mongodb' :
    require => [
        Package['mongodb'],
        File_line['listen-to-all']
    ],
    ensure => running
}


file_line { 'listen-to-all':
    path => '/etc/mongodb.conf',
    match => '^.*bind_ip = 127.0.0.1$',
    line => 'bind_ip = 0.0.0.0',
    require => Package['mongodb']
}
