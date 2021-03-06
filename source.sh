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

alias Lhorizon="source $HOME/.alias/docker-runenv.sh runenv:complete-cuda10.0 lhorizon $CodeDir/code/HorizonAD"
alias Dhorizon="source $HOME/.alias/docker-desktop.sh runenv:complete-desktop-cuda10.0 dhorizon $CodeDir/code/HorizonAD -p=51001:5901"