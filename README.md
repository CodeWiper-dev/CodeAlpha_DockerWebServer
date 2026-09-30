# CodeAlpha_DockerWebServer

A simple Nginx web server running in a Docker container, built for the CodeAlpha DevOps internship (Task 4).

## Files
- Dockerfile - builds the image from nginx:alpine and adds a health check
- index.html - the web page served by Nginx

## Run it
docker build -t myweb .
docker run -d -p 8080:80 --name web myweb

Open http://localhost:8080

## Container management
docker ps                # running containers
docker logs web          # view logs
docker inspect --format="{{.State.Health.Status}}" web   # health status
docker stop web          # stop
docker start web         # start again
docker exec web nginx -v # run a command inside the container
docker rm web            # remove

## What I learned
- Docker images and containers, and how a Dockerfile builds an image
- Port mapping (host 8080 to container 80)
- Container lifecycle and health checks
- Reading logs to troubleshoot

