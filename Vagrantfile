# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, host: 3000, guest: 3000
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "512"
     vb.cpus = 2
  end
  config.vm.provision "shell", :path => "bootstrap.sh"
  # This lines are the fix for an issue with synced folders
  config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
  # Fix end
end
