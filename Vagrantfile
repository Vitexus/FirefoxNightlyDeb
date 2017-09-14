Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder ".", "/vagrant"
end
