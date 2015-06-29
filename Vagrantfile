Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision "shell", path: "provision.sh", args: [ENV.fetch('DATABASE_PORT', 28001), ENV.fetch('ENVIRONMENT', 'development')]
  config.vm.network "forwarded_port", guest: ENV.fetch('DATABASE_PORT', 28001), host: ENV.fetch('DATABASE_PORT', 28001)
end
