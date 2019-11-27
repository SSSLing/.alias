if [ -z $CodeDir ]; then
    export CodeDir=$HOME
fi
alias rs="source $HOME/.zshrc"
alias st="source $HOME/.alias/st.sh"
alias cm="source $HOME/.alias/cm.sh"
alias red="export ContainerName=\"red\" && export ExtrarParam=\"-p=8893:8888\" && source $HOME/.alias/docker-runenv.sh"
alias blue="export ContainerName=\"blue\" && export ExtrarParam=\"-p=8894:8888\" && source $HOME/.alias/docker-runenv.sh"
alias yellow="export ContainerName=\"yellow\" && export ExtrarParam=\"-p=8895:8888\" && source $HOME/.alias/docker-runenv.sh"
alias horizon="export ContainerName=\"horizon\" && source $HOME/.alias/docker-runenv.sh"
