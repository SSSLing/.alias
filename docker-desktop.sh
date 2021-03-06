if [ $(docker ps -a -f name=$2 | grep -c $2) = 0 ]; then
    nvidia-docker run --rm -it \
    --name $2 \
    -h $2 \
    -v $3:/root/HorizonAD \
    -v $3/.bashrc:/root/.bashrc \
    -w /root \
    $4 \
    $1 \
    /bin/bash
else
    docker exec -it $2 /bin/bash
fi