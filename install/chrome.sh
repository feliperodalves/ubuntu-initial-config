chrome32(){
    sudo apt-get install -y libxss1 libappindicator1 libindicator7;
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb;
    sudo dpkg -i google-chrome*.deb;
    sudo rm google-chrome*.deb;
}

chrome64(){
    sudo apt-get install -y libxss1 libappindicator1 libindicator7;
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
    sudo dpkg -i google-chrome*.deb;
    sudo rm google-chrome*.deb;
}

case $version in 
  1) chrome32;; 
  2) chrome64;;
  *);;
esac