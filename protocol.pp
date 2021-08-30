node 'puppetclient.local' { 

 include apt

   apt::ppa { 'ppa:openjdk-r/ppa':
      ensure => present,

  }


    package { 'openjdk-8-jdk':
      require => [
#        Exec['apt-update'],
         Apt::Ppa['ppa:openjdk-r/ppa'],
      ],

       }

 }

