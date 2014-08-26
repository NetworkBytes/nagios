class nagios::install {
    package { [ 'nagios' ]:
        ensure  => latest,
    }
    include 'nagios::install::nrpe-plugin'
    include 'nagios::install::plugins'
}



class nagios::install::nrpe-plugin {
    package { [ 'nagios-plugins-nrpe' ]:
        ensure  => latest,
    }
}


class nagios::install::plugins {
    package { [ 'nagios-plugins', 'nagios-plugins-all' ]:
        ensure  => latest,
    }
}








