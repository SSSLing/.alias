if [ $(docker ps -a -f name=$2 | grep -c $2) = 0 ]; then
    if [ -z $DISPLAY -o $(echo $DISPLAY | grep localhost -c) = 1 ]; then
        nvidia-docker run --rm -it \
        --name $2 \
        -h $2 \
        -v $3/code/HorizonAD:/root \
        -w /root \
        $4 \
        $1 \
        /bin/bash
    else
        export DisplayNum=$(echo $DISPLAY | grep '[^:]' -o) && \
        xhost +local:root && \
        nvidia-docker run --rm -it \
        --name $2 \
        -h $2 \
        -e DISPLAY \
        -e QT_X11_MITSHM=1 \
        -v /tmp/.X11-unix/X$DisplayNum:/tmp/.X11-unix/X$DisplayNum \
        -v $3/code/HorizonAD:/root \
        -w /root \
        $4 \
        $1 \
        /bin/bash
    fi
else
    docker exec -it $2 /bin/bash
fi