if [ $(docker ps -a -f name=$ContainerName | grep -c $ContainerName) = 0 ]; then
    if [ -z $DISPLAY -o $(echo $DISPLAY | grep localhost -c) = 1 ]; then
        nvidia-docker run --rm -it \
        --name $ContainerName \
        -h $ContainerName \
        -v $CodeDir/code/HorizonAD:/root \
        -w /root \
        $ExtrarParam \
        runenv:latest \
        /bin/bash
    else
        export DisplayNum=$(echo $DISPLAY | grep '[^:]' -o) && \
        xhost +local:root && \
        nvidia-docker run --rm -it \
        --name $ContainerName \
        -h $ContainerName \
        -e DISPLAY \
        -e QT_X11_MITSHM=1 \
        -v /tmp/.X11-unix/X$DisplayNum:/tmp/.X11-unix/X$DisplayNum \
        -v $CodeDir/code/HorizonAD:/root \
        -w /root \
        $ExtrarParam \
        runenv:latest \
        /bin/bash
    fi
else
    docker exec -it $ContainerName /bin/bash
fi