* Experiments with Crystal Language (running in Docker)

* Load Crystal with local volume ~/docker/crystal/ mapped to /opt/crystal/play ...

- DOCKER_HOST=tcp://192.168.99.100:2376 DOCKER_CERT_PATH=/Users/martyn/.docker/machine/machines/default DOCKER_TLS_VERIFY=1 docker run -it -v ~/docker/crystal:/opt/crystal/play crystallang/crystal:latest /bin/bash

* Run docker image crystal_play in Kitematic and then run this to use (~/docker/crystal mapped to /opt/crystal/play):

- DOCKER_HOST=tcp://192.168.99.100:2376 DOCKER_CERT_PATH=/Users/martyn/.docker/machine/machines/default DOCKER_TLS_VERIFY=1 docker exec -it crystal_play /bin/bash

