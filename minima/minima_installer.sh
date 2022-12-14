function minima_installer(){
	echo "check if existing file ..." && sleep 5;
	sudo wget -O minima/minima_remove.sh https://raw.githubusercontent.com/minima-global/Minima/master/scripts/minima_remove.sh && chmod +x minima/minima_remove.sh && sudo ./minima/minima_remove.sh -p 9001 -x ;
	echo "Finished";
	echo "Installing docker ..." && sleep 5;
	sudo curl -fsSL https://get.docker.com/ -o minima/get-docker.sh && sudo chmod +x minima/get-docker.sh && ./minima/get-docker.sh; 
	echo -e "Finished";
	echo "Installing minima dApps ...";
	read -p "Set minima dApps password : " pass
	docker run -d -e minima_mdspassword=$pass -e minima_server=true -v ~/minimadocker9001:/home/minima/data -p 9001-9004:9001-9004 --restart unless-stopped --name minima9001 minimaglobal/minima:latest;
	sudo systemctl enable docker.service;
	sudo systemctl enable containerd.service;
	docker run -d --restart unless-stopped --name watchtower -e WATCHTOWER_CLEANUP=true -e WATCHTOWER_TIMEOUT=60s -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower;
	echo -e "\n==========MINIMA DAPPS SUCCESFULLY INSTALLED==========\n";
	echo "Open https://your_ip:9003 on your browser to access Minima dApps";
	
}
