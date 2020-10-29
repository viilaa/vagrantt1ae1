Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "web-dev"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080, id: "nginx"

  #config.vm.synced_folder ".", "/vagrant", disable:true
  config.vm.synced_folder "./www", "/usr/share/nginx/www"
  config.vm.synced_folder "./sites-enabled", "/etc/nginx/sites-enabled"
end
