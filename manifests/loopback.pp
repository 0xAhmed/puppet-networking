class networking::loopback {
	service { 'networking' :
		ensure => running,
	}
	
	include concat::setup
	$interfaces = '/etc/network/interfaces'
	
	concat { $interfaces :
		owner => root,
		group => root,
		mode => 644,
		notify => Service['networking']
	}	
	
	concat::fragment { "loopback" :
		target => $interfaces,
		content => "# The loopback network interface\nauto lo\niface lo inet loopback",
		order => 01
	}
}
