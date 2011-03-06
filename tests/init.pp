networking::interfaces { "eth0" :
  order => 02,
  mode => static,
  ip => '192.168.96.10',
  gateway => '192.168.96.1',
  netmask => '255.255.255.0',
  broadcast => '255.255.255.255'
}
                              
networking::interfaces { "eth1" :
  order => 03,
  mode => dhcp
}
