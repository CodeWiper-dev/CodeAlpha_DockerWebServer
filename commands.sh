#!/bin/sh
# Task 4 - run these one by one and take screenshots

docker build -t myweb .                       # build the image
docker run -d -p 8080:80 --name web myweb     # run it -> http://localhost:8080
docker ps                                     # list running containers
docker logs web                               # view logs
docker inspect --format='{{.State.Health.Status}}' web   # health status
docker exec -it web sh                        # shell inside container
docker stop web                               # stop
docker start web                              # start again
docker rm -f web                              # remove
