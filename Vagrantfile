Vagrant.configure("2") do |config|

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end

  config.vm.define :clienteUbuntu do |clienteUbuntu|
    clienteUbuntu.vm.box = "bento/ubuntu-22.04"
    clienteUbuntu.vm.network :private_network, ip: "192.168.100.2"
    clienteUbuntu.vm.provision "shell", path: "script2.sh"
    clienteUbuntu.vm.hostname = "clienteUbuntu"
  end

  config.vm.define :servidorUbuntu do |servidorUbuntu|
    servidorUbuntu.vm.box = "bento/ubuntu-22.04"
    servidorUbuntu.vm.network :private_network, ip: "192.168.100.3"
    servidorUbuntu.vm.provision "shell", path: "script3.sh"
    servidorUbuntu.vm.hostname = "servidorUbuntu"
  end

  config.vm.define :balanceador do |balanceador|
    balanceador.vm.box = "bento/ubuntu-22.04"
    balanceador.vm.network :private_network, ip: "192.168.100.4"
    balanceador.vm.provision "shell", path: "script4.sh"
    balanceador.vm.hostname = "balanceador"
  end
end