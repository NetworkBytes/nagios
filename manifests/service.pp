class nagios::service {
 
    exec { 'fix-permissions':
        command     => "/bin/find /etc/nagios/conf.d -type f -name '*cfg' | xargs chmod +r",
        refreshonly => true,
    } ->
 
    service { 'nagios':
        ensure      => running,
        enable      => true,
        #require     => Class[ 'nagios::server' ],
    }
}
