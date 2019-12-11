#!/bin/bash
function jsonval {
    temp=`$json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    echo ${temp##*|}
}

json='curl -s -X GET https://api.github.com/repos/nvm-sh/nvm/releases/latest'
prop='name:'
apiURL="$(echo "`jsonval`" | cut -d' ' -f2)"

`curl -o- https://raw.githubusercontent.com/creationix/nvm/$apiURL/install.sh | bash`
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";  # This loads nvm bash_completion
nvm ls-remote;
nvm install 10.15 --latest-npm -y;