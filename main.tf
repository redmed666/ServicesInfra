#########################################
#  ESXI Provider host/login details
#########################################
#
#   Use of variables here to hide/move the variables to a separate file
#
provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

#########################################
#  ESXI Guest resource
#########################################

resource "esxi_guest" "gitlab" {
  guest_name = "gitlab"
  disk_store = var.esxi_datastore
  guestos    = "ubuntu-64"

  boot_disk_type = "thin"

  memsize            = "4096"
  numvcpus           = "2"
  resource_pool_name = "/"
  power              = "on"
  clone_from_vm = "Ubuntu1804"

    provisioner "remote-exec" {
    inline = [
      "sudo ifconfig eth0 up && echo 'eth0 up' || echo 'unable to bring eth0 interface up",
      "sudo ifconfig eth1 up && echo 'eth1 up' || echo 'unable to bring eth1 interface up"
    ]

    connection {
      host        = self.ip_address
      type        = "ssh"
      user        = "vagrant"
      password    = "vagrant"
    }
  }
  # This is the network that bridges your host machine with the ESXi VM
  # If this interface doesn't provide connectivity, you will have to uncomment
  # the interface below and add a virtual network that does
  network_interfaces {
    virtual_network = var.vm_network
    mac_address     = "00:50:56:a5:b1:c2"
    nic_type        = "e1000"
  }
  # This is the local network that will be used for 192.168.38.x addressing
  network_interfaces {
    virtual_network = var.hostonly_network
    mac_address     = "00:50:56:a5:b1:c4"
    nic_type        = "e1000"
  }
  # OPTIONAL: Uncomment out this interface stanza if your vm_network doesn't 
  # provide internet access
  # network_interfaces {
  #  virtual_network = var.nat_network
  #  mac_address     = "00:50:56:a5:b1:c3"
  #  nic_type        = "e1000"
  # }
  guest_startup_timeout  = 45
  guest_shutdown_timeout = 30
}

resource "esxi_guest" "ghostwriter" {
  guest_name = "ghostwriter"
  disk_store = var.esxi_datastore
  guestos    = "ubuntu-64"

  boot_disk_type = "thin"

  memsize            = "4096"
  numvcpus           = "2"
  resource_pool_name = "/"
  power              = "on"
  clone_from_vm = "Ubuntu1804"

    provisioner "remote-exec" {
    inline = [
      "sudo ifconfig eth0 up && echo 'eth0 up' || echo 'unable to bring eth0 interface up",
      "sudo ifconfig eth1 up && echo 'eth1 up' || echo 'unable to bring eth1 interface up"
    ]

    connection {
      host        = self.ip_address
      type        = "ssh"
      user        = "vagrant"
      password    = "vagrant"
    }
  }
  # This is the network that bridges your host machine with the ESXi VM
  # If this interface doesn't provide connectivity, you will have to uncomment
  # the interface below and add a virtual network that does
  network_interfaces {
    virtual_network = var.vm_network
    mac_address     = "00:50:56:a6:b1:c2"
    nic_type        = "e1000"
  }
  # This is the local network that will be used for 192.168.38.x addressing
  network_interfaces {
    virtual_network = var.hostonly_network
    mac_address     = "00:50:56:a6:b1:c4"
    nic_type        = "e1000"
  }
  # OPTIONAL: Uncomment out this interface stanza if your vm_network doesn't 
  # provide internet access
  # network_interfaces {
  #  virtual_network = var.nat_network
  #  mac_address     = "00:50:56:a6:b1:c3"
  #  nic_type        = "e1000"
  # }
  guest_startup_timeout  = 45
  guest_shutdown_timeout = 30
}

resource "esxi_guest" "mythic" {
  guest_name = "mythic"
  disk_store = var.esxi_datastore
  guestos    = "ubuntu-64"

  boot_disk_type = "thin"

  memsize            = "4096"
  numvcpus           = "2"
  resource_pool_name = "/"
  power              = "on"
  clone_from_vm = "Ubuntu1804"

    provisioner "remote-exec" {
    inline = [
      "sudo ifconfig eth0 up && echo 'eth0 up' || echo 'unable to bring eth0 interface up",
      "sudo ifconfig eth1 up && echo 'eth1 up' || echo 'unable to bring eth1 interface up"
    ]

    connection {
      host        = self.ip_address
      type        = "ssh"
      user        = "vagrant"
      password    = "vagrant"
    }
  }
  # This is the network that bridges your host machine with the ESXi VM
  # If this interface doesn't provide connectivity, you will have to uncomment
  # the interface below and add a virtual network that does
  network_interfaces {
    virtual_network = var.vm_network
    mac_address     = "00:50:56:a7:b1:c2"
    nic_type        = "e1000"
  }
  # This is the local network that will be used for 192.168.38.x addressing
  network_interfaces {
    virtual_network = var.hostonly_network
    mac_address     = "00:50:56:a7:b1:c4"
    nic_type        = "e1000"
  }
  # OPTIONAL: Uncomment out this interface stanza if your vm_network doesn't 
  # provide internet access
  # network_interfaces {
  #  virtual_network = var.nat_network
  #  mac_address     = "00:50:56:a7:b1:c3"
  #  nic_type        = "e1000"
  # }
  guest_startup_timeout  = 45
  guest_shutdown_timeout = 30
}

resource "esxi_guest" "others" {
  guest_name = "others"
  disk_store = var.esxi_datastore
  guestos    = "ubuntu-64"

  boot_disk_type = "thin"

  memsize            = "4096"
  numvcpus           = "2"
  resource_pool_name = "/"
  power              = "on"
  clone_from_vm = "Ubuntu1804"

    provisioner "remote-exec" {
    inline = [
      "sudo ifconfig eth0 up && echo 'eth0 up' || echo 'unable to bring eth0 interface up",
      "sudo ifconfig eth1 up && echo 'eth1 up' || echo 'unable to bring eth1 interface up"
    ]

    connection {
      host        = self.ip_address
      type        = "ssh"
      user        = "vagrant"
      password    = "vagrant"
    }
  }
  # This is the network that bridges your host machine with the ESXi VM
  # If this interface doesn't provide connectivity, you will have to uncomment
  # the interface below and add a virtual network that does
  network_interfaces {
    virtual_network = var.vm_network
    mac_address     = "00:50:56:a8:b1:c2"
    nic_type        = "e1000"
  }
  # This is the local network that will be used for 192.168.38.x addressing
  network_interfaces {
    virtual_network = var.hostonly_network
    mac_address     = "00:50:56:a8:b1:c4"
    nic_type        = "e1000"
  }
  # OPTIONAL: Uncomment out this interface stanza if your vm_network doesn't 
  # provide internet access
  # network_interfaces {
  #  virtual_network = var.nat_network
  #  mac_address     = "00:50:56:a8:b1:c3"
  #  nic_type        = "e1000"
  # }
  guest_startup_timeout  = 45
  guest_shutdown_timeout = 30
}
