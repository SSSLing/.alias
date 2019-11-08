if [ $(docker ps -a -f name=$ContainerName | grep -c $ContainerName) = 0 ]; then
    export DisplayNum=$(echo $DISPLAY | grep '[^:]' -o) && \
    xhost +local:root && \
    nvidia-docker run --rm -it \
    --name $ContainerName \
    -h $ContainerName \
    -e DISPLAY \
    -e QT_X11_MITSHM=1 \
    -v /tmp/.X11-unix/X$DisplayNum:/tmp/.X11-unix/X$DisplayNum:rw \
    -v $HOME/code/HorizonAD:/root \
    -w /root \
    $ExtrarParam \
    runenv:latest \
    /bin/bash
else
    docker exec -it $ContainerName /bin/bash
fi