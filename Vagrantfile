Vagrant.configure("2") do |config|

  # Servidor DNS
  config.vm.define "dns" do |dns|
    dns.vm.box = "debian/bullseye64"
    dns.vm.network "private_network", ip: "192.168.56.10"
    dns.vm.hostname = "dns.davidsb.test"
    dns.vm.synced_folder ".", "/vagrant", disabled: false
    dns.vm.provision "shell", path: "bootstrap.sh"
  end

  # Servidor FTP
  config.vm.define "ftp" do |ftp|
    ftp.vm.box = "debian/bullseye64"
    ftp.vm.network "private_network", ip: "192.168.56.11"
    ftp.vm.hostname = "ftp.davidsb.test"
    ftp.vm.synced_folder ".", "/vagrant", disabled: false
    ftp.vm.provision "shell", path: "ftp_bootstrap.sh"
  end

end
