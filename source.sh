if [ -z $CodeDir ]; then
    export CodeDir=$HOME
fi
alias rs="source $HOME/.zshrc"
alias st="source $HOME/.alias/st.sh"
alias cm="source $HOME/.alias/cm.sh"

alias perception="cd $CodeDir/code/HorizonAD/catkin_ws/src/perception"
alias mapengine="cd $CodeDir/code/HorizonAD/catkin_ws/src/mapengine"
alias simulator="cd $CodeDir/code/HorizonAD/catkin_ws/src/simulator"
alias planning="cd $CodeDir/code/HorizonAD/catkin_ws/src/planning"
alias control="cd $CodeDir/code/HorizonAD/catkin_ws/src/control"
alias common="cd $CodeDir/code/HorizonAD/catkin_ws/src/common"
alias v2x="cd $CodeDir/code/HorizonAD/catkin_ws/src/v2x"

alias red="export ContainerName=\"red\" && export ExtrarParam=\"-p=8893:8888\" && source $HOME/.alias/docker-runenv.sh"
alias blue="export ContainerName=\"blue\" && export ExtrarParam=\"-p=8894:8888\" && source $HOME/.alias/docker-runenv.sh"
alias yellow="export ContainerName=\"yellow\" && export ExtrarParam=\"-p=8895:8888\" && source $HOME/.alias/docker-runenv.sh"
alias horizon="export ContainerName=\"horizon\" && source $HOME/.alias/docker-runenv.sh"