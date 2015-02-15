Example docker commands:

- docker build -t omni/14-04-browser-image-diff .
- docker run -p 8080:8080 omni/14-04-browser-image-diff
- docker stop $(docker ps -a -q)
- docker rm $(docker ps -a -q)
- docker exec -it '<container id>' bash