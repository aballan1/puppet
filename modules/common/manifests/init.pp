class common {
	if $hostname == 'tirisfal' {
		cron { 'papply': 
			ensure => present,
			command => 'puppet apply /etc/puppet/manifests/site.pp --modulepath=/puppet/modules',
			user => 'root',
			hour => '*',
			minute => [ '0', '15', '30', '45'],
		}
	}
	else {
		cron { 'papply': 
			ensure => present,
			command => 'puppet agent --no-daemonize --verbose --onetime --modulepath=/puppet/modules',
			user => 'root',
			hour => '*',
			minute => [ '0', '15', '30', '45'],
		}
	}


}
