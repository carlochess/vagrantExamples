execute "updatesourceslist" do
	user "root"
	group "admin"
	cwd "/etc/apt"
	command "sed 's/us/co/' sources.list > /tmp/temporal && mv /tmp/temporal sources.list"
	action :run
end
