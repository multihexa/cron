class cron::agent {
  cron { "puppet":
    ensure  => present,
    command => "/usr/bin/puppet agent --onetime --no-daemonize --logdest syslog > /dev/null 2>&1",
    user    => 'root',
    minute  => [fqdn_rand(30), fqdn_rand(30) + 30]
  }
}
