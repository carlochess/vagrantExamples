execute "uncompress cache" do
	user "vagrant"
	group "vagrant"
	cwd "/home/vagrant"
	command "tar xf /vagrant/cache_nmap.tar"
	action :run
end
execute "install-nmap" do
	user "root"
	group "admin"
	cwd "/tmp"
	command "apt-get -y --force-yes -o=dir::cache=/home/vagrant/ install nmap"
	action :run
end

