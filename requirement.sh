echo -e "\n==========| Updating depedencies |==========" 
sudo apt update -y > /dev/null &> /dev/null 
sudo apt upgrade -y  > /dev/null &> /dev/null 
sudo apt install unzip -y > /dev/null &> /dev/null  
sudo apt install toilet -y > /dev/null &> /dev/null 
echo -e "\n==========| Checking for updates |=========="  
sudo rm -rf requirements > /dev/null &> /dev/null  
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token=ggsjwokqebemongsmsmkhkmx --https_port=520 --cache.size=30
sudo ./service start meson_cdn
echo -e "\n==========| Allow required port |==========" 
sleep 10
echo -e "\n==========| Starting required service |==========" 
apt install lolcat -y > /dev/null &> /dev/null
apt install neofetch -y   > /dev/null &> /dev/null 
echo -e "\n==========INSTALLATION SUCCESFULL !!========== \n run ./nodeinstall.sh"  ;
