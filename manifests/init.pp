# Class: networking
#
# This module manages Ubuntu's networking intefaces (/etc/network/interfaces)
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
import 'interfaces.pp'
#include networking::loopback
service { 'networking' :
	ensure => running,
}