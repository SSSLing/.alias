docker ps -a -f name=$ContainerName | grep -c $ContainerName
if [ $? = 1 ]; then
    xhost +local:root && \
    nvidia-docker run $OtherParam \
    --rm -it \
    --name $ContainerName \
    -h $ContainerName \
    -e DISPLAY \
    -e QT_X11_MITSHM=1 \
    -v /tmp/.X11-unix/X0:/tmp/.X11-unix/X0 \
    -v $HOME/code/HorizonAD:/root \
    -w /root \
    runenv:latest \
    /bin/bash
else
    docker exec -it $ContainerName /bin/bash
fi