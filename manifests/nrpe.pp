class nagios::nrpe {

    include 'nagios::install::nrpe-plugin'
    include 'nagios::install::plugins'
 
    package { [ 'nrpe' ]:
        ensure      => present,
    }
 
    service { 'nrpe':
        ensure      => running,
        enable      => true,
        require     => Package[ ['nrpe'] ],
    }
}
