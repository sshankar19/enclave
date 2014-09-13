# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu14'
  config.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "2048"]
    v.customize ["modifyvm", :id, "--cpus", "2"]
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3000 # development server
  config.vm.network :forwarded_port, guest: 5432, host: 5432 # postgresql
  config.vm.network :forwarded_port, guest: 6379, host: 6379 # redis
  config.vm.network :forwarded_port, guest: 1080, host: 1080 # mailcatcher
  config.vm.network :forwarded_port, guest: 1025, host: 1025 # mailcatcher

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/vagrant.yml"
  end
end

