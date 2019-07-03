cd $(pwd)/vagrant/
if [ -d ".vagrant" ];
then
   vagrant up
   vagrant ssh
else
	vagrant plugin install vagrant-vbguest
	if vagrant up | grep -q 'error'; then
	  vagrant reload
	fi
	vagrant ssh
fi
