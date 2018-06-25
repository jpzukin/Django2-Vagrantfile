# vim: set ft=ruby :

$script = <<-SCRIPT
yum update -y

# vim 8.x
yum install -y git gcc ncurses-devel
git clone https://github.com/vim/vim.git
cd vim
make
make install

# python 3.6.x
cd /home/vagrant
yum install -y centos-release-scl
yum update -y
yum install -y rh-python36
echo ". scl_source enable rh-python36" >> /home/vagrant/.bash_profile

# Django 2.x
bash -c ". scl_source enable rh-python36; pip install django"
bash -c ". scl_source enable rh-python36; pip install --upgrade pip"
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.box = "bento/centos-7.5"
    config.vm.box_version = "201806.08.0"

    config.vm.network "private_network", ip:"192.168.201.202"

    config.vm.provision "shell", inline: $script
end

