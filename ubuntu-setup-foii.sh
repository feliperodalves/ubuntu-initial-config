#!/bin/bash

sudo apt install -y curl wget

. color.sh
welcome(){

clear
echo -e "
${txtblu}
===================================
    Initial Ubuntu Configuration
      Created by Felipe Alves
===================================
${txtrst}Options:"
echo -e "
    ${txtblu}What's your version?
    ${txtrst}
    1) 32 bits
    2) 64 bits
";

    # Get value
    read version

    . install/chrome.sh
    . install/git.sh
    . install/docker.sh
    . install/insomnia.sh
    . install/nvm.sh
    . install/yarn.sh
    . install/vscode.sh
    . install/mongocompass.sh
    . install/reactotron.sh
    . install/dbeaver.sh
    . install/android-studio.sh

    clear
echo -e "
${txtblu}===================================
    Processo Finalizado!
===================================
${txtrst}";
}

welcome