class postgresql {
	package { 'postgresql-server':
		ensure => latest,
	}	
	service { 'postgresql':
		ensure => running,
		enable => true,
		require => Package['postgresql-server'],
	}
}
