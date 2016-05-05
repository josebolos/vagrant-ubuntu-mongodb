package { 'mongodb' :
    ensure => latest
}


service { 'mongodb' :
    require => [
        Package['mongodb']
    ],
    ensure => running
}
