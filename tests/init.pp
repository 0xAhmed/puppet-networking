node "ubuntu.localdomain" {
  networking::interfaces { "eth0" :
      order => '02',
          mode => 'dhcp',
          #    ip => '192.168.218.135',
          #    netmask => '255.255.255.0',
          #    gateway => '192.168.218.1'
  }
}
