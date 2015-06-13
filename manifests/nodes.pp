node default {
	include git
	include common
}

node 'tirisfal.home' {
	include git
	include common
}

node 'hellscream.home' {
	include git
	include common
	include postgresql
}
