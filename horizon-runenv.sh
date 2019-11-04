docker ps -a -f name="horizon" | grep -c horizon
if [ $? = 1 ]; then
    xhost +local:root && \
    nvidia-docker run --rm -it \
    --name horizon \
    -h horizon \
    -e DISPLAY \
    -e QT_X11_MITSHM=1 \
    -v /tmp/.X11-unix/X1:/tmp/.X11-unix/X1 \
    -v /home/shiling/code/HorizonAD:/root \
    -w /root \
    runenv:latest \
    /bin/bash
else
    docker exec -it horizon /bin/bash
fi