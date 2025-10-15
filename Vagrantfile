Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.56.10"
  config.vm.synced_folder "config", "/vagrant/config"
  config.vm.provision "shell", path: "bootstrap.sh"
end
