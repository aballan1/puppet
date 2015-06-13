class postgresql {
	package { 'postgresql':
		ensure => latest,
	}	
	service { 'postgresql':
		ensure => running,
		enable => true,
		require => Package['postgresql'],
	}
}
