define networking::interfaces ($interface=$name, $order, $mode, $bridge='no', $ip='', $gateway='', $netmask='', $broadcast='') {
	# may need to add $bridge_name
	include networking::loopback
	if $bridge == 'yes' {
		case $mode {
			static: {
				concat::fragment { "static bridge" :
					target => $interfaces,
					content => template(),
					order => $order
				}
			}
			dhcp: {
				concat::fragment { "dhcp bridge" :
					target => $interfaces,
					content => template(),
					order => $order
				}
			}
		}
	} else {
		case $mode {
			static: {
				concat::fragment { "static interface" :
					target => $interfaces,
					content => template('networking/interface-static.erb'),
					order => $order
				}
			}
			dhcp: {
				concat::fragment { "dhcp interface" :
					target => $interfaces,
					content => template('networking/interface-dhcp.erb'),
					order => $order
				}
			}
		}
	}
}