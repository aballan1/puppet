class common {
	cron { 'papply': 
		ensure => present,
		command => 'puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules',
		user => 'root',
		hour => '*',
		minute => [ '0', '15', '30', '45'],
	}

}
