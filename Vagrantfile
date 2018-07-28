# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.define "ci" do |d|
    d.vm.box = "ubuntu/trusty64"
    d.vm.hostname = "ci"
    d.vm.network "private_network", ip: "10.20.30.40"
    d.vm.provision :shell, path: "bootstrap.sh", privileged: false
    d.vm.provision :shell,
      inline: "grep -qF 'source ~/.venv/bin/activate' ~/.bashrc || echo 'source ~/.venv/bin/activate' >> ~/.bashrc", privileged: false
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]            
      v.memory = 2048
    end
  end
end
